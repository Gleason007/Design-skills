# Design Skills 仓库 — Agent 配置指南

> 本仓库为设计团队收集了 7 个精选 AI skills，供团队成员在 AI Agent 环境中直接使用。
> 请在每次会话开始时自动完成以下配置。

---

## 仓库结构

```
skills/
├── awesome-design-md/      — 73+ 真实网站 DESIGN.md 模板（参考）
├── gsap-skills/            — GSAP 动画库（动画）
├── impeccable/             — AI 设计质量审核（审核）
├── mcp-server-guide/       — Figma MCP Server 官方指南（Figma 连接）
├── superpowers/            — 软件开发方法论（流程）
├── taste-skill/            — 反"slop"设计提升（品质）
└── ui-ux-pro-max-skill/    — UI/UX 设计引擎（设计系统）
```

---

## 自动配置指令

### Step 1: 扫描并加载所有 Skills

请扫描 `skills/` 目录下的所有子目录，读取每个子目录中的 **SKILL.md** 文件，
并将所有 skills 加载到当前会话上下文。

### Step 2: 验证加载状态

确认以下 skills 已就绪：

| Skill | 用途 | 触发场景 |
|-------|------|---------|
| mcp-server-guide | Figma MCP Server 官方指南，连接 AI 与 Figma | Figma 相关任务 |
| impeccable | 设计质量审核（23 命令 + 41 规则） | 设计审核、迭代 |
| ui-ux-pro-max-skill | UI/UX 设计引擎（161 条推理规则） | 设计系统、新项目 |
| awesome-design-md | 73+ 真实网站设计模板参考 | 设计参考、风格迁移 |
| gsap-skills | GSAP 动画库技能 | 动画实现 |
| taste-skill | 反"slop"设计提升 | 设计品质增强 |
| superpowers | 软件开发方法论（14 skills） | 开发流程管理 |

### Step 3: 环境检测与配置

- 如果检测到 Figma MCP Server 连接，确认状态并启用 mcp-server-guide
- 如果项目需要设计系统，优先引用 ui-ux-pro-max-skill 和 awesome-design-md
- 如果进行动画开发，启用 gsap-skills
- 如果进行设计审核，启用 impeccable
- 如果设计品质不足，启用 taste-skill

---

## 设计执行规范

1. **组件优先**：总是先搜索设计系统库，再构建组件
2. **Token 绑定**：所有颜色、字体、间距必须绑定到 Variable/Style，禁止硬编码
3. **Design Brief**：开始设计前输出结构化 Design Brief 供设计师确认
4. **自动验证**：每次写入后自动验证 token 合规性和设计质量

---

## 会话初始检查（每次启动）

请在每次会话开始时自动执行：
1. 确认所有 skills 已加载
2. 检查 Figma MCP Server 连接状态
3. 询问用户今天的设计目标

---

## 常用工作流

### Figma 设计 → 代码
```
1. 使用 mcp-server-guide 连接 Figma
2. 使用 impeccable init 初始化设计规范
3. 使用 ui-ux-pro-max-skill 生成设计系统
4. 使用 gsap-skills 添加动画
5. 使用 impeccable audit 审核质量
```

### 新项目启动
```
1. 使用 superpowers (brainstorming) 探索需求
2. 使用 awesome-design-md 选择设计参考
3. 使用 ui-ux-pro-max-skill 生成设计系统
4. 使用 taste-skill 提升设计品质
```

### 设计质量审核
```
1. 使用 impeccable critique 进行 UX 审查
2. 使用 impeccable audit 进行技术质量检查
3. 使用 taste-skill 提升细节品质
```
