# Design Skills 仓库 — 自动配置指南

> 本仓库为设计团队收集了 7 个精选 AI skills。
> **当你看到这份文件时，请立即帮用户完成以下配置。**

---

## ⚠️ 立即执行（配置指令）

### Step 1: 识别用户的 Agent 类型

请询问用户或检测当前环境，确定使用的是哪个 Agent：
- **Codex** (OpenAI Codex CLI / App)
- **Claude Code** (Anthropic Claude Code)
- **Cursor** (Cursor IDE)
- **其他**

### Step 2: 执行对应配置

#### 🟢 Codex 用户

请执行以下步骤：

```bash
# 1. 确定 Codex skills 目录
#    通常是 ~/.codex/skills/ 或 ~/.config/codex/skills/

# 2. 创建 skills 目录
mkdir -p ~/.codex/skills

# 3. 复制本仓库的 skills 到 Codex skills 目录
cp -r skills/* ~/.codex/skills/

# 4. 验证安装
ls ~/.codex/skills/
```

如果用户没有全局目录，请告知用户复制到项目目录的 `.codex/skills/` 下。

#### 🟣 Claude Code 用户

请执行以下步骤：

```bash
# 1. 创建 Claude Code skills 目录（如果不存在）
mkdir -p ~/.claude/skills

# 2. 复制本仓库的 skills 到 Claude Code skills 目录
cp -r skills/* ~/.claude/skills/

# 3. 验证安装
ls ~/.claude/skills/
```

或者复制到当前项目的 `.claude/skills/` 目录。

#### 🔵 Cursor 用户

请执行以下步骤：

```bash
# Cursor 使用 .cursorrules 文件，无需复制 skills 目录
# 但需要确认 .cursorrules 已加载

# 检查是否存在 .cursor/.cursorrules
cat .cursor/.cursorrules
```

告知用户 Cursor 已自动读取 `.cursor/.cursorrules`，可以直接使用。

---

### Step 3: 验证配置

配置完成后，请验证以下内容：

1. **Skills 目录是否存在**
   ```bash
   ls ~/.codex/skills/ 2>/dev/null || echo "Codex skills 未找到"
   ls ~/.claude/skills/ 2>/dev/null || echo "Claude skills 未找到"
   ```

2. **Skills 是否正确加载**
   请列出已加载的 skills，确认包含以下 7 个：
   - mcp-server-guide
   - impeccable
   - ui-ux-pro-max-skill
   - awesome-design-md
   - gsap-skills
   - taste-skill
   - superpowers

3. **如果用户需要 Figma 集成**
   请询问用户是否需要配置 Figma MCP Server：
   - MCP Server URL: `https://mcp.figma.com/mcp`
   - 需要 Figma Dev 或 Full seat

---

## 📋 配置完成后告知用户

请向用户确认以下信息：

```
✅ 配置完成！

已加载的 Skills（7 个）:
├── mcp-server-guide       — Figma MCP Server 官方指南
├── impeccable             — 设计质量审核 (23 命令 + 41 规则)
├── ui-ux-pro-max-skill    — UI/UX 设计引擎 (161 推理规则)
├── awesome-design-md      — 73+ 真实网站设计参考
├── gsap-skills            — GSAP 动画库
├── taste-skill            — 反"slop"设计提升
└── superpowers            — 软件开发方法论

💡 现在可以直接使用这些 skills 了。
   例如说："帮我用 impeccable 审核这个设计"
```

---

## 🎯 配置后的使用方式

配置完成后，用户只需在对话中提及 skill 名称，即可调用：

| 用户说 | Agent 执行 |
|--------|-----------|
| "帮我审核设计质量" | 加载 impeccable/critique |
| "生成一个设计系统" | 加载 ui-ux-pro-max-skill |
| "参考 Apple 的风格" | 加载 awesome-design-md/apple |
| "添加滚动动画" | 加载 gsap-skills/scrolltrigger |
| "提升设计品质" | 加载 taste-skill |
| "帮我规划项目" | 加载 superpowers/writing-plans |

---

## 🛠️ 如果配置失败

### 情况 1: 无法确定 Agent 类型

请询问用户：
> "你当前使用的是哪个 AI Agent？（Codex / Claude Code / Cursor / 其他）"

### 情况 2: 没有写入权限

如果无法写入 `~/.codex/skills/` 或 `~/.claude/skills/`，请：
1. 询问用户是否可以将 skills 复制到当前项目目录
2. 或者让用户手动执行复制命令

### 情况 3: Skills 已存在

如果某些 skills 已存在于用户环境中：
1. 询问用户是否覆盖（backup 旧的）
2. 或者跳过，使用现有版本

---

## 📁 仓库结构（供 Agent 参考）

```
Design-skills/
├── AGENTS.md                    # 本文件（配置指南）
├── .claude/CLAUDE.md           # Claude Code 详细配置
├── .codex/SKILL.md             # Codex 详细配置
├── .cursor/.cursorrules        # Cursor 规则
└── skills/                      # 7 个 skills
    ├── awesome-design-md/
    ├── gsap-skills/
    ├── impeccable/
    ├── mcp-server-guide/
    ├── superpowers/
    ├── taste-skill/
    └── ui-ux-pro-max-skill/
```

---

## 📝 补充说明

1. **Skills 来源**: 每个 skill 都来自 GitHub 上的开源仓库
2. **更新方式**: 运行 `git pull` 获取最新版本
3. **权限要求**: 需要写入 `~/.codex/skills/` 或 `~/.claude/skills/` 的权限
4. **Figma 集成**: 需要 Figma Dev 或 Full seat 才能使用 write 功能

---

*本文件由 Agent 自动读取并执行配置。如果配置过程中遇到问题，请告知用户。*
