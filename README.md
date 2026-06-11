# 🎨 Design Skills

<p align="center">
  <strong>一站式 AI 设计工具箱</strong> — 为设计团队精心筛选的 7 个 AI Agent Skills，开箱即用。
</p>

<p align="center">
  <a href="https://github.com/Gleason007/Design-skills/stargazers"><img src="https://img.shields.io/github/stars/Gleason007/Design-skills?style=flat-square&color=yellow" alt="Stars"></a>
  <a href="https://github.comleason007/Design-skills"><img src="https://img.shields.io/badge/skills-7-blue?style=flat-square" alt="Skills"></a>
  <a href="https://github.com/Gleason007/Design-skills"><img src="https://img.shields.io/badge/agents-Claude%20%7C%20Codex%20%7C%20Cursor%20%7C%20Antigravity-green?style=flat-square" alt="Agents"></a>
  <a href="https://github.com/Gleason007/Design-skills/blob/main/LICENSE"><img src="https://img.shields.io/github/license/Gleason007/Design-skills?style=flat-square" alt="License"></a>
</p>

---

## 🎯 这是什么？

这个仓库是**设计团队的 AI 工具箱**。收集了 7 个经过筛选的 AI Agent Skills，覆盖从 Figma 设计到代码实现、从设计系统到动画效果的全链路。

团队 Clone 后直接使用，无需逐个搜索、安装。Claude Code、Codex、Cursor、Antigravity / Gemini 都会自动读取配置，加载所有 skills。

---

## 📦 包含的 7 个 Skills

| # | Skill | 🎯 核心能力 | 🏷️ 标签 | ⭐ |
|---|-------|-----------|---------|----|
| 1 | **mcp-server-guide** | 🔗 Figma ↔ AI 双向操作（官方 9 skills） | Figma、MCP、Code Connect | 官方 |
| 2 | **impeccable** | 🛡️ 设计质量审核（23 命令 + 41 规则） | 质量、审核、迭代 | ⭐ |
| 3 | **ui-ux-pro-max-skill** | 🧠 设计系统生成（161 推理规则） | 设计系统、多平台 | ⭐⭐ |
| 4 | **awesome-design-md** | 📚 73+ 真实网站设计参考 | 参考、模板、迁移 | ⭐ |
| 5 | **gsap-skills** | ✨ 高性能动画（ScrollTrigger、Timeline） | 动画、动效 | 官方 |
| 6 | **taste-skill** | 🎨 反"slop"设计提升（14 skills） | 品质、风格、品牌 | ⭐ |
| 7 | **superpowers** | 📋 软件开发方法论（14 流程 skills） | 流程、TDD、审查 | ⭐ |

---

## 🚀 快速开始

```bash
# Clone 仓库
git clone https://github.com/Gleason007/Design-skills.git
cd Design-skills

# 打开你的 AI Agent（自动加载所有 skills）
# ✅ Claude Code       → 读取 .claude/CLAUDE.md
# ✅ Codex             → 读取 AGENTS.md + .codex/SKILL.md
# ✅ Cursor            → 读取 .cursor/.cursorrules
# ✅ Antigravity/Gemini → 读取 .antigravity/SKILL.md
```

**无需额外配置，开箱即用。**

---

## 🤖 支持的 AI Agent

| Agent | 配置文件 | 加载方式 |
|-------|---------|---------|
| **Claude Code** | `.claude/CLAUDE.md` | 在项目目录中打开，自动读取 |
| **Codex** | `AGENTS.md` + `.codex/SKILL.md` | 在项目目录中打开，自动读取 |
| **Cursor** | `.cursor/.cursorrules` | 在项目目录中打开，自动读取 |
| **Antigravity / Gemini** | `.antigravity/SKILL.md` | 在项目目录中打开，自动读取 |

---

## 🎬 能力矩阵

### Figma 集成 → 代码

```
🎨 Figma 设计稿
    ↓  mcp-server-guide (figma-use)
📄 提取设计规范
    ↓  ui-ux-pro-max-skill
🏗️ 生成设计系统
    ↓  mcp-server-guide (figma-code-connect)
💻 代码输出
    ↓  impeccable (audit)
✅ 质量验证
```

### 新项目启动

```
💡 需求描述
    ↓  superpowers (brainstorming)
📝 设计计划
    ↓  awesome-design-md
🎯 选择参考风格
    ↓  ui-ux-pro-max-skill
🎨 生成设计系统
    ↓  taste-skill
✨ 品质提升
```

### 设计质量审核

```
📋 设计方案
    ↓  impeccable (critique)
🔍 UX 审查
    ↓  impeccable (audit)
🛡️ 技术质量
    ↓  taste-skill
🎨 细节提升
```

---

## 🛠️ 每个 Skill 能做什么？

### 1️⃣ mcp-server-guide — Figma 官方连接层

**来源**: Figma 官方 | **9 个 skills**

让 AI 直接读写 Figma 文件，提取设计变量、生成代码、构建设计系统。

```
figma-use              → 基础 Figma MCP 连接
figma-code-connect     → 组件 ↔ 代码映射
figma-generate-design  → AI 生成设计
figma-generate-library → 构建设计系统库
figma-generate-diagram → 流程图/架构图
figma-swiftui          → SwiftUI 桥接
figma-create-new-file  → 创建新文件
figma-use-figjam       → FigJam 白板
figma-use-slides       → Figma Slides
```

**💡 使用场景**: 设计稿 → 代码、设计系统管理、组件映射

---

### 2️⃣ impeccable — 设计质量引擎

**来源**: Paul Bakaus (Google) | **1 skill + 23 命令 + 41 规则**

解决"AI 生成的 UI 看起来都一样"的问题。41 条规则自动检测 AI 设计缺陷。

| 命令 | 作用 |
|------|------|
| `/impeccable init` | 初始化，生成 PRODUCT.md + DESIGN.md |
| `/impeccable critique` | UX 设计审查（层级、清晰度） |
| `/impeccable audit` | 技术质量检查（a11y、性能、响应式） |
| `/impeccable polish` | 最终润色，设计系统对齐 |
| `/impeccable bolder` | 增强 boring 设计 |
| `/impeccable animate` | 添加有意义的动效 |

**💡 使用场景**: 设计审核、质量检查、设计迭代

---

### 3️⃣ ui-ux-pro-max-skill — 设计系统生成器

**来源**: NextLevelBuilder | **161 推理规则 + 67 种风格**

根据项目需求自动生成完整设计系统，不是复制模板，而是基于设计原则推理。

**包含**:
- 🎨 161 条设计推理规则
- 🖌️ 67 种 UI 风格
- 🔤 57 种字体配对
- 📐 99 条 UX 指导
- 📊 25 种图表类型
- 🔧 15+ 技术栈支持

**💡 使用场景**: 新项目启动、设计系统建立、跨平台一致性

---

### 4️⃣ awesome-design-md — 设计参考库

**来源**: VoltAgent | **73+ 真实网站 DESIGN.md**

来自 Airbnb、Apple、Stripe 等 73+ 个真实网站的设计规范文档。

**包含（部分）**:
- 🏠 Airbnb、Airtable
- 🍎 Apple、Stripe、Linear
- 🚗 BMW、Ferrari、Lamborghini
- 🎮 PlayStation、Nintendo
- 🛒 Shopify、Notion、Figma

**💡 使用场景**: 风格迁移、设计参考、快速启动

---

### 5️⃣ gsap-skills — 动画专家

**来源**: GreenSock 官方 | **8 个 skills**

GSAP (GreenSock Animation Platform) 是业界最知名的 JavaScript 动画库。所有高级插件现已免费。

```
gsap-core        → 核心 API（tweens、timelines）
gsap-timeline    → Timeline 时间线控制
gsap-scrolltrigger → 滚动驱动动画
gsap-plugins     → 官方插件（SplitText、MorphSVG 等）
gsap-react       → React 集成
gsap-frameworks  → Vue/Svelte/Angular 集成
gsap-performance → 性能优化
gsap-utils       → 工具函数
```

**💡 使用场景**: 复杂动画、滚动动画、SVG 动画

---

### 6️⃣ taste-skill — 反"slop"设计

**来源**: Leonxlnx | **14 个 skills**

解决 AI 生成 UI "看起来 cheap" 的问题。从布局、字体、动效、间距多维度提升设计品质。

| Skill | 风格 |
|-------|------|
| `taste-skill-v1` | 基础设计提升 |
| `minimalist-skill` | 极简风格 |
| `brutalist-skill` | 粗野主义风格 |
| `soft-skill` | 柔和/圆润风格 |
| `imagegen-frontend-web` | Web 图片生成参考 |
| `brandkit` | 品牌套件生成 |

**💡 使用场景**: 设计品质提升、风格化设计、品牌一致性

---

### 7️⃣ superpowers — 开发方法论

**来源**: obra | **14 个 skills**

完整的软件开发方法论，确保 AI "不直接写代码"，而是先规划、再执行、再验证。

```
brainstorming              → 需求探索
writing-plans              → 编写实现计划
executing-plans            → 按计划执行
subagent-driven-development → 子 Agent 驱动开发
systematic-debugging       → 系统性调试
test-driven-development    → 测试驱动开发
verification-before-completion → 完成前验证
requesting-code-review     → 请求代码审查
receiving-code-review      → 接收代码审查
dispatching-parallel-agents → 并行 Agent 调度
finishing-a-development-branch → 分支完成处理
```

**💡 使用场景**: 大型项目管理、复杂任务拆分、质量保证

---

## 🔄 推荐工作流

### 场景 A: Figma 设计 → 代码

```
1. mcp-server-guide (figma-use)
   → 连接 Figma
   
2. impeccable (init)
   → 初始化设计规范
   
3. ui-ux-pro-max-skill
   → 生成设计系统
   
4. mcp-server-guide (figma-code-connect)
   → 映射到代码
   
5. gsap-skills
   → 添加动画
   
6. impeccable (audit)
   → 审核质量
   
7. superpowers (requesting-code-review)
   → 代码审查
```

### 场景 B: 从零构建产品

```
1. superpowers (brainstorming)
   → 需求探索
   
2. awesome-design-md
   → 选择设计参考
   
3. superpowers (writing-plans)
   → 编写计划
   
4. ui-ux-pro-max-skill
   → 生成设计系统
   
5. taste-skill
   → 提升设计品质
   
6. superpowers (verification-before-completion)
   → 验证交付
```

### 场景 C: 设计系统维护

```
1. mcp-server-guide (figma-generate-library)
   → 更新 Figma 库
   
2. impeccable (audit)
   → 审核一致性
   
3. taste-skill
   → 提升细节品质
```

---

## 🏗️ 仓库结构

```
Design-skills/
├── 📄 AGENTS.md                    # 通用配置（所有 Agent）
├── 📄 README.md                    # 本文件
├── 📄 FIGMA-SKILLS.md              # Figma 9 个 Skills 详解
├──
├── 📁 .antigravity/
│   └── 📄 SKILL.md                 # Antigravity / Gemini 配置
│
├── 📁 .claude/
│   └── 📄 CLAUDE.md                # Claude Code 项目指令
│
├── 📁 .codex/
│   └── 📄 SKILL.md                 # Codex 配置
│
├── 📁 .cursor/
│   └── 📄 .cursorrules             # Cursor 规则
│
└── 📁 skills/                       # 7 个 skills
    ├── 📁 awesome-design-md/
    ├── 📁 gsap-skills/
    ├── 📁 impeccable/
    ├── 📁 mcp-server-guide/
    ├── 📁 superpowers/
    ├── 📁 taste-skill/
    └── 📁 ui-ux-pro-max-skill/
```

---

## 📝 设计原则（强制执行）

| 原则 | 说明 | ✅/❌ |
|------|------|------|
| **组件优先** | 搜索设计系统库 → 使用 Instance → 绑定 token | ✅ |
| **Token 绑定** | 所有颜色、字体、间距绑定到 Variable/Style | ✅ |
| **Design Brief** | 设计前输出结构化 Brief 供设计师确认 | ✅ |
| **自动验证** | 每次写入后验证 token 合规性 | ✅ |
| 硬编码 | 不使用原始颜色、字体、间距值 | ❌ |
| 重复造轮子 | 不从零构建已有组件 | ❌ |

---

## 🔄 更新与维护

```bash
# 更新 skills（获取上游最新版本）
git pull origin main

# 新增 skill
git subtree add --prefix=skills/新skill https://github.com/作者/仓库.git main --squash
```

---

## 🤝 贡献

欢迎提交 PR 或 Issue 来改进这个仓库。

---

## 📄 License

MIT License

---

<p align="center">
  <sub>Built with ❤️ for the design team</sub>
</p>
