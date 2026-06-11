# Design Skills for Claude Code

> 这是设计团队共享的 AI skills 仓库，请在每次会话开始时自动加载所有 skills。

---

## 仓库信息

- **仓库**: https://github.com/Gleason007/Design-skills
- **用途**: 设计团队共享的 AI skills 集合
- **更新**: 团队成员 clone 后直接使用，无需手动配置

---

## 自动配置流程

### 1. 加载 Skills

请扫描 `.claude/skills/` 或 `skills/` 目录下的所有子目录，读取每个子目录中的 **SKILL.md**，
将所有 skills 加载到当前会话。

### 2. 已安装的 Skills

| Skill | 功能 | 触发条件 |
|-------|------|---------|
| **mcp-server-guide** | Figma MCP Server 官方指南，连接 AI 与 Figma | Figma 相关任务 |
| **impeccable** | 设计质量审核（23 命令 + 41 条检测规则） | 设计审核、迭代 |
| **ui-ux-pro-max-skill** | UI/UX 设计引擎（161 条推理规则 + 67 种风格） | 设计系统、新项目 |
| **awesome-design-md** | 73+ 真实网站 DESIGN.md 模板 | 设计参考、风格迁移 |
| **gsap-skills** | GSAP 动画库（ timelines、ScrollTrigger、plugins ） | 动画实现 |
| **taste-skill** | 反"slop"设计提升（14 个 skills） | 设计品质增强 |
| **superpowers** | 软件开发方法论（14 个流程 skills） | 开发流程管理 |

### 3. 设计执行规范

1. **组件优先**：搜索设计系统库 → 使用 Instance → 绑定 token
2. **Token 绑定**：所有颜色、字体、间距必须绑定到 Variable/Style
3. **Design Brief**：开始设计前输出结构化 Design Brief 供设计师确认
4. **自动验证**：每次写入 Figma 后自动验证 token 合规性

---

## 技能详情

### impeccable — 设计质量引擎

**核心命令**:
| 命令 | 作用 |
|------|------|
| `/impeccable init` | 初始化项目，生成 PRODUCT.md + DESIGN.md |
| `/impeccable craft` | 完整的"构思→构建→迭代"流程 |
| `/impeccable critique` | UX 设计审查（层级、清晰度） |
| `/impeccable audit` | 技术质量检查（a11y、性能、响应式） |
| `/impeccable polish` | 最终润色，设计系统对齐 |
| `/impeccable bolder` | 增强 boring 设计 |
| `/impeccable quieter` | 降低过于 bold 的设计 |
| `/impeccable animate` | 添加有意义的动效 |
| `/impeccable colorize` | 策略性引入色彩 |
| `/impeccable typeset` | 修复字体选择和层级 |

**41 条检测规则**：自动检测 AI 常见设计缺陷（紫色渐变、卡片嵌套、灰色文字在彩色背景上等）。

### ui-ux-pro-max-skill — 设计系统生成器

**包含**:
- 161 条设计推理规则
- 67 种 UI 风格
- 57 种字体配对
- 99 条 UX 指导
- 25 种图表类型
- 15+ 技术栈支持

**使用方式**: 根据项目需求自动生成完整设计系统。

### mcp-server-guide — Figma 官方连接

**9 个 skill**:
| Skill | 功能 |
|-------|------|
| figma-use | 基础 Figma MCP 使用 |
| figma-code-connect | 组件与代码映射 |
| figma-generate-design | 在 Figma 中生成设计 |
| figma-generate-library | 构建设计系统库 |
| figma-generate-diagram | 生成流程图/架构图 |
| figma-swiftui | SwiftUI 桥接 |
| figma-create-new-file | 创建新文件 |
| figma-use-figjam | FigJam 支持 |
| figma-use-slides | Slides 支持 |

---

## 常用工作流

### 工作流 A: Figma 设计 → 代码
```
1. mcp-server-guide (figma-use) → 连接 Figma
2. impeccable init → 初始化设计规范
3. ui-ux-pro-max-skill → 生成设计系统
4. gsap-skills → 添加动画
5. mcp-server-guide (figma-code-connect) → 映射到代码
6. impeccable audit → 审核质量
```

### 工作流 B: 新项目启动
```
1. superpowers (brainstorming) → 探索需求
2. awesome-design-md → 选择设计参考
3. superpowers (writing-plans) → 编写计划
4. ui-ux-pro-max-skill → 生成设计系统
5. taste-skill → 提升设计品质
```

### 工作流 C: 设计质量审核
```
1. impeccable critique → UX 审查
2. impeccable audit → 技术质量检查
3. taste-skill → 细节品质提升
4. superpowers (requesting-code-review) → 代码审查
```

---

## 会话初始检查

请在每次会话开始时自动执行：
1. 确认所有 skills 已加载
2. 检查 Figma MCP Server 连接状态
3. 询问用户今天的设计目标
4. 如有 Figma URL，运行 preflight 检查

---

## 团队成员使用方式

```bash
# 1. Clone 仓库
git clone https://github.com/Gleason007/Design-skills.git
cd Design-skills

# 2. 在仓库目录中打开 Claude Code
#    自动读取 .claude/CLAUDE.md，加载所有 skills

# 3. 开始设计工作
```

---

## 注意事项

1. **skills 更新**: 运行 `git pull` 获取最新 skills
2. **新增 skills**: 添加到 `skills/` 目录后重新加载
3. **Figma 连接**: 确保已配置 Figma MCP Server（https://mcp.figma.com/mcp）
4. **权限**: 需要 Dev 或 Full seat 才能使用 Figma MCP write 功能
