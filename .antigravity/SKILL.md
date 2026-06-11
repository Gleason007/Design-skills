---
name: design-skills
description: "Design Skills for Antigravity — 7 curated design skills orchestrated by superpowers. DO NOT use individual skills directly; always invoke through superpowers."
---

# Design Skills — Antigravity Orchestration Guide

> **WARNING**: This skill is managed by `superpowers` (the orchestrator).
> **DO NOT** invoke any sub-skill directly. Route ALL requests through `superpowers` first.

---

## ⚡ CRITICAL: superpowers-first rule

```
User request
      │
      ▼
┌──────────────────────┐
│  1. superpowers      │  ← ALWAYS FIRST
│     - analyze        │
│     - plan           │
│     - dispatch       │
└──────────┬───────────┘
           │
     ┌─────┴─────┐
     ▼           ▼
┌──────────┐  ┌──────────┐
│ figma    │  │ design   │
│ MCP      │  │ system   │
└──────────┘  └──────────┘
     │           │
     └─────┬─────┘
           ▼
┌──────────────────────┐
│  2. superpowers      │
│     - verify         │
│     - complete       │
└──────────────────────┘
```

---

## 🗂️ 技能调用矩阵（superpowers 使用）

| # | Sub-Skill | What It Does | When superpowers Dispatches It |
|---|-----------|--------------|-------------------------------|
| 1 | **mcp-server-guide** | Figma MCP — read/write designs, generate code, build libraries | User mentions Figma, design files, component sync, or "push to Figma" |
| 2 | **impeccable** | Quality audit — 23 commands + 41 detection rules | User mentions review, audit, quality check, or polish |
| 3 | **ui-ux-pro-max-skill** | Design system generation — 161 reasoning rules, 67 styles | User mentions design system, theme, generate components, or "create a design" |
| 4 | **awesome-design-md** | Reference library — 73+ real-world DESIGN.md templates | User mentions "like Airbnb", "similar to Stripe", or wants design reference |
| 5 | **gsap-skills** | Animation — timelines, ScrollTrigger, plugins | User mentions animation, motion, transition, or "add animation" |
| 6 | **taste-skill** | Anti-slop design enhancement — layout, typography, spacing | User mentions "looks cheap", "improve design", or "make it look better" |
| 7 | **superpowers** *(self)* | Orchestration — brainstorming, planning, execution, verification | Every task starts and ends here |

---

## 🔒 Mandatory Workflow

### Step 1: RECEIVE (superpowers)

Receive the user's request. Do NOT act yet.

**Action**: `superpowers/brainstorming`
- Understand the intent
- Identify the domain (Figma, design, animation, audit, etc.)
- Determine which sub-skills are needed

### Step 2: PLAN (superpowers)

**Action**: `superpowers/writing-plans`
- Break into sub-tasks
- Map each sub-task to a skill from the matrix above
- Define expected outputs

### Step 3: DISPATCH (superpowers → sub-skill)

**Action**: Call the specific sub-skill
- Pass the context from planning
- Execute the task
- Collect results

**Allowed dispatch targets** (based on user intent):
- Figma operations → `mcp-server-guide`
- Design system creation → `ui-ux-pro-max-skill`
- Animation → `gsap-skills`
- Quality review → `impeccable`
- Design reference → `awesome-design-md`
- Design enhancement → `taste-skill`

### Step 4: VERIFY (superpowers)

**Action**: `superpowers/verification-before-completion`
- Check if results meet user requirements
- Validate design quality (if applicable)
- Ensure all sub-tasks completed

### Step 5: COMPLETE (superpowers)

**Action**: `superpowers/finishing-a-development-branch`
- Summarize results
- Ask user for confirmation
- Mark task complete

---

## ❌ Forbidden Actions

**DO NOT** do the following:

| Forbidden | Correct |
|-----------|---------|
| ❌ "I'll use figma-use directly" | ✅ "superpowers will dispatch mcp-server-guide" |
| ❌ "Let me run impeccable audit" | ✅ "superpowers will dispatch impeccable for audit" |
| ❌ "I'll generate the design with ui-ux-pro-max-skill" | ✅ "superpowers plans and dispatches ui-ux-pro-max-skill" |
| ❌ Skip planning | ✅ Always plan first via superpowers |
| ❌ Skip verification | ✅ Always verify via superpowers |

---

## 📋 Example Interactions

### Example 1: Figma Design → Code

```
User: "帮我从这个 Figma 文件生成 React 代码"

superpowers/brainstorming
  → Intent: Figma → Code
  → Required: mcp-server-guide
  → Plan: Extract design → Map to components → Generate code

superpowers/writing-plans
  → Sub-task 1: Connect to Figma (mcp-server-guide)
  → Sub-task 2: Extract component info (mcp-server-guide)
  → Sub-task 3: Generate React code (ui-ux-pro-max-skill)
  → Sub-task 4: Audit quality (impeccable)

superpowers dispatches → mcp-server-guide
  → Extracts design tokens, components

superpowers dispatches → ui-ux-pro-max-skill
  → Generates React code with design system

superpowers dispatches → impeccable
  → Audits code quality

superpowers/verification-before-completion
  → Confirms all sub-tasks complete
  → Presents result to user
```

### Example 2: Design Quality Review

```
User: "这个设计看起来太丑了，帮我看看"

superpowers/brainstorming
  → Intent: Design quality review
  → Required: taste-skill + impeccable

superpowers/writing-plans
  → Sub-task 1: Analyze design (taste-skill)
  → Sub-task 2: Run audit (impeccable)
  → Sub-task 3: Generate improvements (taste-skill)

superpowers dispatches → taste-skill
  → Identifies design issues

superpowers dispatches → impeccable
  → Runs 41 detection rules
  → Generates audit report

superpowers dispatches → taste-skill
  → Generates improvement suggestions

superpowers/verification-before-completion
  → Reviews all findings
  → Presents to user
```

---

## 🛠️ Troubleshooting

### "I tried to use figma-use directly"

**Error**: Skill not found or not authorized.
**Fix**: Always route through superpowers. The orchestrator will dispatch mcp-server-guide.

### "impeccable doesn't respond"

**Cause**: Direct invocation bypassed superpowers.
**Fix**: Call superpowers first. It will manage impeccable execution.

### "Multiple skills conflict"

**Cause**: Concurrent direct calls.
**Fix**: Let superpowers serialize and coordinate all skill calls.

---

## 📂 Repository

- **GitHub**: https://github.com/Gleason007/Design-skills
- **Install**: Run `bash install.sh` in repo root
- **Skills Dir**: `~/.antigravity/skills/` (after install)
- **Global Config**: `~/.antigravity/SKILL.md` (after install)

---

## 📝 License

MIT © Design Skills Team
