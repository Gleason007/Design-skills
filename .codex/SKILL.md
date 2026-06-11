# Design Skills for Codex

> Codex 专用配置：自动加载团队设计 skills，无需手动设置。

---

## 快速开始

Codex 会在每次会话开始时自动读取此文件。所有配置已预设，直接开始工作。

---

## 已加载的 Skills

本仓库包含 7 个精选设计 skills：

| # | Skill | 核心能力 |
|---|-------|---------|
| 1 | **mcp-server-guide** | Figma 官方 MCP，连接 AI 与 Figma（9 个 skills） |
| 2 | **impeccable** | 设计质量审核：23 命令 + 41 检测规则 |
| 3 | **ui-ux-pro-max-skill** | 设计系统生成：161 推理规则 + 67 风格 |
| 4 | **awesome-design-md** | 73+ 真实网站 DESIGN.md 参考模板 |
| 5 | **gsap-skills** | GSAP 动画库：timeline、ScrollTrigger、plugins |
| 6 | **taste-skill** | 反"slop"设计提升（14 个 skills） |
| 7 | **superpowers** | 软件开发方法论（14 个流程 skills） |

---

## 自动配置指令

### 会话启动时自动执行

```
1. 扫描 skills/ 目录，加载所有 SKILL.md
2. 验证 Figma MCP Server 连接状态
3. 确认 design system 可用性
4. 就绪提示
```

---

## 核心能力速查

### Figma 操作
```
# 连接 Figma
→ 使用 mcp-server-guide/figma-use

# 生成设计
→ 使用 mcp-server-guide/figma-generate-design

# 组件映射到代码
→ 使用 mcp-server-guide/figma-code-connect

# 构建设计系统库
→ 使用 mcp-server-guide/figma-generate-library
```

### 设计质量
```
# 初始化项目
→ /impeccable init

# UX 审查
→ /impeccable critique

# 技术质量检查
→ /impeccable audit

# 最终润色
→ /impeccable polish
```

### 设计系统
```
# 生成完整设计系统
→ ui-ux-pro-max-skill (自动推理)

# 选择设计参考
→ awesome-design-md (复制 DESIGN.md)

# 提升设计品质
→ taste-skill (多维度提升)
```

### 动画
```
# 添加动画
→ gsap-skills (timeline + ScrollTrigger)
```

### 开发流程
```
# 需求探索
→ superpowers/brainstorming

# 编写计划
→ superpowers/writing-plans

# 代码审查
→ superpowers/requesting-code-review
```

---

## 推荐工作流

### 场景 1: Figma 设计稿 → 代码
1. `mcp-server-guide/figma-use` — 连接 Figma
2. `impeccable/init` — 初始化规范
3. `ui-ux-pro-max-skill` — 生成设计系统
4. `mcp-server-guide/figma-code-connect` — 映射到代码
5. `gsap-skills` — 添加动画
6. `impeccable/audit` — 审核质量

### 场景 2: 从零构建产品
1. `superpowers/brainstorming` — 需求探索
2. `awesome-design-md` — 选择参考
3. `superpowers/writing-plans` — 编写计划
4. `ui-ux-pro-max-skill` — 生成设计系统
5. `taste-skill` — 提升品质
6. `superpowers/verification-before-completion` — 验证

### 场景 3: 设计系统维护
1. `mcp-server-guide/figma-generate-library` — 更新 Figma 库
2. `impeccable/audit` — 审核一致性
3. `taste-skill` — 提升细节

---

## 设计原则（强制执行）

1. ✅ **组件优先**：搜索库 → 使用 Instance → 绑定 token
2. ✅ **Token 绑定**：所有视觉值绑定到 Variable/Style
3. ✅ **Design Brief**：设计前输出结构化 Brief 供确认
4. ✅ **自动验证**：写入后验证 token 合规性
5. ❌ **禁止硬编码**：不使用原始颜色、字体、间距值
6. ❌ **禁止重复造轮子**：不从零构建已有组件

---

## 常见问题

**Q: 如何更新 skills？**
```bash
git pull origin main
# 重新加载即可
```

**Q: 如何添加新 skill？**
1. 下载到 `skills/` 目录
2. 提交到 GitHub
3. 团队执行 `git pull`

**Q: Figma MCP 连接失败？**
- 确认有 Dev 或 Full seat
- 确认 MCP Server URL: https://mcp.figma.com/mcp
- 确认 API Token 有效

**Q: skills 冲突？**
- 检查 skills 目录结构
- 确保每个 skill 有独立的 SKILL.md
- 使用 superpowers/systematic-debugging 排查

---

## 仓库信息

- **GitHub**: https://github.com/Gleason007/Design-skills
- **Clone**: `git clone https://github.com/Gleason007/Design-skills.git`
- **Issues**: https://github.com/Gleason007/Design-skills/issues

---

*本文件由团队维护，如有更新请提交 PR。*
