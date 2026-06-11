# 🎨 Figma MCP Server Guide — 9 个 Skills 详解

> 来源: [figma/mcp-server-guide](https://github.com/figma/mcp-server-guide) (Figma 官方)
> 
> 这 9 个 skills 是 Figma 官方提供的 MCP (Model Context Protocol) 工具，
> 让 AI Agent 能够直接读写 Figma 文件，实现设计与代码的无缝连接。

---

## 📊 9 个 Skills 总览

| # | Skill | 🎯 核心能力 | 🔗 触发条件 |
|---|-------|-----------|-----------|
| 1 | **figma-use** | Figma Plugin API 基础（所有操作的前提） | 任何 Figma 读写操作 |
| 2 | **figma-code-connect** | Figma 组件 ↔ 代码组件映射 | Code Connect、设计转代码 |
| 3 | **figma-generate-design** | 代码/描述 → Figma 设计稿 | "写到 Figma"、"生成页面" |
| 4 | **figma-generate-library** | 构建/更新设计系统库 | 创建组件、变量、设计令牌 |
| 5 | **figma-generate-diagram** | Mermaid → Figma 图表 | 流程图、架构图、时序图 |
| 6 | **figma-swiftui** | Figma ↔ SwiftUI 双向转换 | iOS、Swift、iPhone、iPad |
| 7 | **figma-create-new-file** | 创建新的 Figma 文件 | 新建设计文件 |
| 8 | **figma-use-figjam** | FigJam（白板）操作 | 白板、协作 |
| 9 | **figma-use-slides** | Figma Slides（演示文稿） | 幻灯片、演示 |

---

## 🔥 核心 Skill: figma-use

> **这是所有 Figma 操作的前提。没有它，其他 skills 都无法工作。**

### 作用

通过 MCP 调用 `use_figma` 工具，在 Figma 文件中执行 JavaScript 代码。
相当于让 AI Agent 获得了 Figma Plugin API 的能力。

### 核心规则（17 条）

| 规则 | 说明 | 重要程度 |
|------|------|---------|
| 1. 用 `return` 传数据 | 返回值自动 JSON 序列化，不要用 `figma.closePlugin()` | ⭐⭐⭐ |
| 2. 顶层 await | 代码自动包装在 async 上下文中 | ⭐⭐ |
| 3. `figma.notify()` 不可用 | 会抛出 "not implemented" | ⭐⭐ |
| 4. `console.log()` 不返回 | 必须用 `return` 输出数据 | ⭐⭐⭐ |
| 5. 小步迭代 | 大操作拆成多个 `use_figma` 调用 | ⭐⭐⭐⭐⭐ |
| 6. 颜色 0-1 范围 | `{r: 1, g: 0, b: 0}` = 红色（不是 0-255） | ⭐⭐⭐ |
| 7. Fills/strokes 只读 | 克隆 → 修改 → 重新赋值 | ⭐⭐ |
| 8. **文本编辑标准流程** | load font → await → mutate → return IDs | ⭐⭐⭐⭐⭐ |
| 9. **页面异步切换** | `await figma.setCurrentPageAsync(page)`（sync setter 会报错） | ⭐⭐⭐⭐ |
| 10. `setBoundVariableForPaint` 返回新 paint | 必须捕获并重新赋值 | ⭐⭐ |
| 11. `createVariable` 接受对象或 ID | 推荐使用对象 | ⭐ |
| 12. **layoutSizing 规则** | `FIXED` 总是可用，`HUG`/`FILL` 有条件限制 | ⭐⭐⭐ |
| 13. 新节点远离 (0,0) | 避免节点重叠 | ⭐⭐ |
| 14. **出错时 STOP** | 失败脚本是原子的，修复后再重试 | ⭐⭐⭐ |
| 15. **必须 return 所有节点 ID** | 创建/修改的节点都要返回 | ⭐⭐⭐ |
| 16. **显式设置 variable.scopes** | 默认 `ALL_SCOPES` 会污染属性选择器 | ⭐⭐⭐ |
| 17. **await 所有 Promise** | 未 await 的异步调用会导致静默失败 | ⭐⭐⭐ |

### 使用示例

```javascript
// ✅ 正确：创建红色矩形并返回 ID
const rect = figma.createRectangle();
rect.x = 100;
rect.y = 100;
rect.fills = [{ type: 'SOLID', color: { r: 1, g: 0, b: 0 } }];
figma.currentPage.appendChild(rect);

return { createdNodeId: rect.id };
```

---

## 🔄 figma-code-connect — 组件 ↔ 代码映射

### 作用

创建 Code Connect 模板文件（`.figma.ts`），将 Figma 组件映射到代码组件。
实现设计稿与代码的双向同步。

### 工作流程

```
1. 解析 Figma URL → 提取 fileKey + nodeId
2. get_code_connect_suggestions → 发现未映射的组件
3. get_context_for_code_connect → 获取组件属性定义
4. 生成 .figma.ts 模板文件
5. 发布到团队库
```

### 关键概念

| 属性类型 | 说明 | 代码对应 |
|---------|------|---------|
| **TEXT** | 文本内容（标题、标签、占位符） | 字符串 prop |
| **BOOLEAN** | 开关（显示/隐藏图标、禁用状态） | boolean prop |
| **VARIANT** | 枚举选项（尺寸、变体、状态） | 枚举 prop |
| **INSTANCE_SWAP** | 可替换嵌套实例（图标、头像） | 组件引用 prop |
| **SLOT** | 灵活内容区域（自由布局） | children prop |

### 使用场景

- **设计 → 代码**: Figma 组件自动生成 React/Vue/Svelte 组件代码
- **代码 → 设计**: 代码组件同步到 Figma，保持设计系统一致
- **设计审查**: 确保 Figma 组件与代码组件一一对应

---

## 🎨 figma-generate-design — 代码 → Figma 设计稿

### 作用

将代码或描述转换为 Figma 设计稿，**使用设计系统组件**而非从零绘制。

### 核心能力

- 📦 **发现设计系统组件** — `search_design_system` 搜索库中可用组件
- 🧩 **使用组件实例** — 用 Instance 而非原始图形
- 🎨 **绑定设计令牌** — 颜色/间距绑定到 Variable，不硬编码
- 📐 **渐进式构建** — 逐 section 构建，验证后再继续

### 工作流程

```
Step 1: 理解交付物
  → 读取代码，识别 sections 和 components

Step 2: 发现设计系统
  → search_design_system 搜索可用组件
  → 识别 variables、styles、components

Step 3: 导入组件
  → 从团队库导入到当前文件
  → 验证组件可用

Step 4: 构建页面
  → 逐 section 构建
  → 使用组件 Instance
  → 绑定 Variable/Style

Step 5: 验证
  → 截图验证
  → 对比代码输出
```

### 适用场景

| 场景 | 示例 |
|------|------|
| 代码 → Figma | "把这个 React 页面推到 Figma" |
| 更新设计稿 | "更新 Figma 页面以匹配最新代码" |
| 创建新页面 | "在 Figma 中创建登录页" |
| 构建多 section | "构建一个带导航的落地页" |

---

## 🏗️ figma-generate-library — 构建设计系统

### 作用

从零构建专业的 Figma 设计系统库，包含变量、组件、样式等。

### 工作流程（6 个 Phase）

```
Phase 0: DISCOVERY（探索）
  → 分析代码库 → 提取 tokens、组件、命名约定
  → 检查现有 Figma 文件
  → 搜索可用库资源
  → ✅ 用户确认：token 列表 + 组件清单

Phase 1: FOUNDATIONS（基础）
  → 创建变量集合和模式
  → 创建原始变量（raw values）
  → 创建语义变量（aliased to primitives）
  → 设置所有变量的 scopes
  → 设置所有变量的 code syntax
  → ✅ 用户确认：变量摘要

Phase 2: FILE STRUCTURE（文件结构）
  → 创建页面骨架
  → 创建基础文档页面（色板、字体、间距）
  → ✅ 用户确认：页面列表 + 截图

Phase 3: COMPONENTS（组件）
  → 创建组件 + 变体集
  → 绑定变量到组件属性
  → 创建 Auto Layout
  → ✅ 用户确认：组件预览

Phase 4: DOCUMENTATION（文档）
  → 组件使用文档
  → 设计原则说明
  → ✅ 用户确认：文档完整性

Phase 5: PUBLISH & VERIFY（发布与验证）
  → 发布到团队库
  → 验证所有组件可用
  → 测试实例化和更新
  → ✅ 完成
```

### 参考的设计系统

- Material 3
- Polaris (Shopify)
- Figma UI3
- Simple DS

---

## 📊 figma-generate-diagram — Mermaid → Figma 图表

### 作用

将 Mermaid.js 语法转换为 Figma 可编辑图表。

### 支持的图表类型

| 类型 | 用途 | Mermaid 类型 |
|------|------|-------------|
| **架构流程图** | 服务 + 数据存储 + 队列 + 集成 | `flowchart` |
| **流程图** | 决策树、流程、管道、依赖图 | `flowchart` |
| **时序图** | API 调用、认证、消息交互 | `sequenceDiagram` |
| **ER 图** | 数据模型、表、键、关系 | `erDiagram` |
| **状态图** | 状态机、状态转换 | `stateDiagram` |
| **甘特图** | 项目进度、里程碑 | `gantt` |

### 限制

- ❌ **不支持**: 饼图、思维导图、维恩图、类图、旅程图、时间线、象限图、C4 模型、Git 图
- ⚠️ **不能修改字体**: 生成后需手动在 Figma 中编辑
- ⚠️ **不能逐节点编辑**: 内容级更改建议重新生成

### 使用示例

```
用户："画一个用户登录的流程图"
→ 生成 Mermaid 语法
→ generate_diagram 工具 → Figma 图表
```

---

## 📱 figma-swiftui — Figma ↔ SwiftUI

### 作用

Figma 设计与 SwiftUI 代码的双向转换。

| 方向 | 触发 | 参考文档 |
|------|------|---------|
| **设计 → 代码** | "把这个 Figma 设计转成 SwiftUI" | `design-to-code.md` |
| **代码 → 设计** | "把 SwiftUI 推到 Figma" | `code-to-design.md` |

### 关键映射

| Figma | SwiftUI |
|-------|---------|
| 语义颜色变量 | `Color(.systemBackground)`, `Color.secondary` |
| SF Symbols | `Image(systemName: "...")`（按名称，非 codepoint） |
| 系统模式 | `NavigationStack`, `TabView`, `List` |
| 布局 | SwiftUI 布局系统（非 pixel 映射） |

### 使用方式

```
# 设计 → 代码
git_design_context(fileKey, nodeId, clientLanguages: "swift", clientFrameworks: "swiftui")
→ 返回 SwiftUI 代码

# 代码 → 设计
use_figma + figma-use + figma-generate-design
→ 在 Figma 中构建 SwiftUI 视图
```

---

## 📄 figma-create-new-file — 创建新文件

### 作用

创建新的空白 Figma 文件（Design / FigJam / Slides）。

### 用法

```
/figma-create-new-file [editorType] [fileName]
```

| 参数 | 可选值 | 默认 |
|------|--------|------|
| `editorType` | `design`, `figjam`, `slides` | `design` |
| `fileName` | 任意字符串 | `Untitled` |

### 示例

```
/figma-create-new-file                    → 创建 "Untitled" 设计文件
/figma-create-new-file figjam My Whiteboard → 创建 "My Whiteboard" 白板
/figma-create-new-file slides Q3 Review    → 创建 "Q3 Review" 幻灯片
```

### 工作流程

```
1. 解析参数 → editorType + fileName
2. 检查 planKey（通过 whoami）
3. 调用 create_new_file 工具
4. 返回 fileKey
5. 后续使用 use_figma 操作新文件
```

---

## 🏠 figma-use-figjam — FigJam 白板操作

### 作用

在 FigJam（白板）环境中执行 Figma Plugin API 操作。

### 关键区别

| 特性 | Design 文件 | FigJam 文件 |
|------|------------|------------|
| URL | `figma.com/design/...` | `figma.com/board/...` |
| `createPage()` | ✅ 可用 | ❌ 不可用（单页） |
| 组织方式 | 页面 + Frame | Section |
| 节点类型 | Frame、Component | Sticky、Shape、Connector |

### 特殊节点类型

| 节点 | 用途 |
|------|------|
| **Sticky** | 便利贴 |
| **Shape** | 形状 |
| **Connector** | 连接线 |
| **Text** | 独立文本 |
| **Section** | 区域分组 |

### 工具

- `get_figjam` — 获取完整的节点树（XML 格式）
- `use_figma` + `figma-use-figjam` — 操作节点

---

## 🎬 figma-use-slides — 幻灯片操作

### 作用

在 Figma Slides 环境中执行 Plugin API 操作。

### 关键规则

| 规则 | 说明 |
|------|------|
| 默认浅色主题 | 新文件自动初始化，需覆盖 |
| `appendChild` 先于 `x`/`y` | 顺序错误会导致位置偏移 (-240, -240) |
| 不删除现有幻灯片 | 修改而非重建（除非用户要求） |
| `createPage()` 不可用 | 使用 SLIDE_GRID / SLIDE_ROW / SLIDE |
| `get_metadata` 不可用 | 用 `use_figma` 只读脚本验证 |

### 节点层次

```
SLIDE_GRID（顶层）
  └── SLIDE_ROW（行）
        └── SLIDE（幻灯片页）
```

### 使用场景

- 创建演示文稿
- 修改/重设计幻灯片
- 品牌演示模板

---

## 🔗 Skills 之间的关系

```
                    figma-use（基础 API）
                         |
        +----------------+----------------+
        |                |                |
   figma-code-      figma-generate-   figma-generate-
   connect           design             library
   （组件映射）      （页面构建）        （设计系统）
        |                |                |
        +----------------+----------------+
                         |
              figma-generate-diagram
              （图表生成）
                         |
              figma-swiftui
              （iOS 桥接）
                         |
        +----------------+----------------+
        |                |                |
   figma-create-    figma-use-      figma-use-
   new-file         figjam           slides
   （新建文件）     （白板）          （幻灯片）
```

---

## 💡 典型使用场景

### 场景 1: 代码 → Figma 设计稿

```
1. figma-create-new-file → 创建新文件
2. figma-use → 连接文件
3. figma-generate-design → 代码转 Figma
   → search_design_system 搜索组件
   → import 组件到文件
   → 逐 section 构建
   → 绑定 Variable/Style
4. figma-use → 截图验证
```

### 场景 2: Figma → 代码

```
1. figma-use → 读取 Figma 文件
2. figma-code-connect → 建立组件映射
   → 解析 URL → fileKey + nodeId
   → get_code_connect_suggestions
   → get_context_for_code_connect
   → 生成 .figma.ts
3. get_design_context → 获取设计上下文
4. 生成代码
```

### 场景 3: 构建设计系统

```
1. figma-create-new-file → 创建新文件
2. figma-generate-library → 构建设计系统
   Phase 0: Discovery → 分析代码库
   Phase 1: Foundations → 创建变量
   Phase 2: File Structure → 创建页面
   Phase 3: Components → 创建组件
   Phase 4: Documentation → 文档化
   Phase 5: Publish → 发布到团队库
3. figma-use → 验证组件可用性
```

### 场景 4: 生成流程图

```
1. figma-create-new-file → 创建 FigJam 或 Design 文件
2. figma-generate-diagram → Mermaid → Figma
3. figma-use / figma-use-figjam → 微调
```

---

## ⚠️ 重要前提条件

### 1. Figma MCP Server 连接

必须配置 Figma MCP Server：
- **URL**: `https://mcp.figma.com/mcp`
- **要求**: Professional、Organization 或 Enterprise 计划
- **权限**: Dev seat 或 Full seat（Starter / View / Collab 受限）

### 2. 速率限制

| 计划 | 限制 |
|------|------|
| Free / Starter / View / Collab | 每月 6 次工具调用 |
| Professional / Organization / Enterprise | 每分钟限制（与 Tier 1 REST API 相同） |

### 3. write 功能

- 目前免费（Beta 阶段）
- 未来将转为按使用量付费

---

## 📚 参考资源

| 文档 | 说明 |
|------|------|
| [Figma MCP Server 文档](https://developers.figma.com/docs/figma-mcp-server/) | 完整文档 |
| [Figma REST API](https://developers.figma.com/docs/rest-api/rate-limits/) | 速率限制说明 |
| [Code Connect](https://help.figma.com/hc/en-us/articles/23920389749655-Code-Connect) | 组件映射指南 |
| [Figma Plugin API](https://www.figma.com/plugin-docs/) | Plugin API 参考 |

---

*本文件基于 Figma 官方 mcp-server-guide 仓库整理。*
