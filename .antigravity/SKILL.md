# Design Skills for Antigravity / Google Gemini

> Antigravity / Google Gemini 配置：自动加载团队设计 skills。

---

## 🚀 快速开始

当用户在 Antigravity 或 Google Gemini CLI 中打开这个仓库时，
自动读取此配置，加载所有 skills。

---

## 📦 已安装的 7 个 Skills

| # | Skill | 🎯 核心能力 |
|---|-------|-----------|
| 1 | **mcp-server-guide** | Figma 官方 MCP（9 skills） |
| 2 | **impeccable** | 设计质量审核（23 命令 + 41 规则） |
| 3 | **ui-ux-pro-max-skill** | UI/UX 设计引擎（161 推理规则） |
| 4 | **awesome-design-md** | 73+ 真实网站 DESIGN.md |
| 5 | **gsap-skills** | GSAP 动画库 |
| 6 | **taste-skill** | 反"slop"设计提升 |
| 7 | **superpowers** | 软件开发方法论（14 skills） |

---

## ⚙️ 自动配置指令

### 会话启动时自动执行

```
1. 扫描 skills/ 目录，读取所有 SKILL.md
2. 确认 7 个 skills 已就绪
3. 检查 Figma MCP Server 连接状态（如适用）
4. 就绪提示
```

---

## 🛠️ 核心能力速查

### 设计质量
```
impeccable init     → 初始化项目
impeccable critique → UX 审查
impeccable audit    → 技术质量检查
impeccable polish   → 最终润色
```

### 设计系统
```
ui-ux-pro-max-skill → 生成设计系统
awesome-design-md   → 选择设计参考
taste-skill         → 提升设计品质
```

### Figma 集成
```
mcp-server-guide    → Figma MCP 连接
figma-code-connect  → 组件 ↔ 代码映射
figma-generate-design → 代码 → Figma
```

### 动画
```
gsap-skills         → GSAP 动画
```

### 开发流程
```
superpowers/brainstorming     → 需求探索
superpowers/writing-plans     → 编写计划
superpowers/executing-plans   → 执行计划
```

---

## 🎬 推荐工作流

### 场景 1: 代码 → Figma
```
1. mcp-server-guide    → 连接 Figma
2. impeccable/init     → 初始化
3. ui-ux-pro-max-skill → 生成设计系统
4. mcp-server-guide    → 构建页面
5. gsap-skills         → 添加动画
6. impeccable/audit    → 审核质量
```

### 场景 2: 从零构建产品
```
1. superpowers/brainstorming → 需求探索
2. awesome-design-md          → 选择参考
3. superpowers/writing-plans  → 编写计划
4. ui-ux-pro-max-skill        → 生成设计系统
5. taste-skill                → 提升品质
```

### 场景 3: 设计质量审核
```
1. impeccable/critique → UX 审查
2. impeccable/audit    → 技术检查
3. taste-skill        → 细节提升
```

---

## 📝 设计原则

1. ✅ **组件优先**：搜索库 → 使用 Instance → 绑定 token
2. ✅ **Token 绑定**：所有视觉值绑定到 Variable/Style
3. ✅ **Design Brief**：设计前输出结构化 Brief
4. ✅ **自动验证**：写入后验证合规性
5. ❌ **禁止硬编码**：不使用原始颜色、字体、间距
6. ❌ **禁止重复造轮子**：不从零构建已有组件

---

## 🔗 相关文件

| 文件 | 说明 |
|------|------|
| `AGENTS.md` | 通用 Agent 配置（Codex 等） |
| `.claude/CLAUDE.md` | Claude Code 配置 |
| `.codex/SKILL.md` | Codex 配置 |
| `.cursor/.cursorrules` | Cursor 配置 |
| `README.md` | 仓库主文档 |
| `FIGMA-SKILLS.md` | Figma 9 skills 详解 |

---

## 📚 参考

- **GitHub**: https://github.com/Gleason007/Design-skills
- **Figma MCP**: https://developers.figma.com/docs/figma-mcp-server/
- **Skills 来源**: skills/ 目录下各子目录

---

*本配置由团队维护，如有更新请提交 PR。*
