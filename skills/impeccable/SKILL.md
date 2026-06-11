---
name: impeccable
description: "Design quality enforcement for AI-generated UIs. 23 commands + 41 detection rules. MUST be dispatched by superpowers — do not invoke directly."
---

# impeccable

> Design quality engine — stops AI from producing generic-looking UIs.
> 
> **⚠️ CRITICAL**: This skill must be dispatched by `superpowers`.
> Do NOT invoke directly. Route ALL requests through `superpowers` first.

---

## 🔒 Invocation Rule

```
❌ FORBIDDEN: Direct invocation
  User → /impeccable critique
  User → /impeccable audit

✅ REQUIRED: Orchestrated invocation
  User → superpowers → dispatch → impeccable
```

## 📋 superpowers Dispatch Matrix

| User Intent | superpowers Action | This Skill Handles |
|-------------|-------------------|-------------------|
| "帮我审核设计" | Dispatch impeccable | critique + audit |
| "看看设计质量" | Dispatch impeccable | audit (41 rules) |
| "优化一下设计" | Dispatch impeccable | polish + bolder/quieter |
| "初始化项目" | Dispatch impeccable | init (PRODUCT.md + DESIGN.md) |
| "添加动效" | Dispatch impeccable → taste-skill | animate (impeccable) + enhance (taste-skill) |
| "配色不对" | Dispatch impeccable | colorize + typeset |

## 🎯 23 Commands

| Command | Purpose | superpowers Triggers When |
|---------|---------|---------------------------|
| `/impeccable init` | Initialize project (PRODUCT.md + DESIGN.md) | User starts new project |
| `/impeccable craft` | Full shape-then-build flow | User wants complete design |
| `/impeccable critique` | UX design review (hierarchy, clarity) | User asks for design review |
| `/impeccable audit` | Technical quality (a11y, perf, responsive) | User asks for quality check |
| `/impeccable polish` | Final pass, design system alignment | Before shipping |
| `/impeccable bolder` | Amplify boring designs | Design looks too plain |
| `/impeccable quieter` | Tone down overly bold designs | Design too loud |
| `/impeccable animate` | Add purposeful motion | User mentions animation |
| `/impeccable colorize` | Strategic color introduction | Color issues |
| `/impeccable typeset` | Fix font choices, hierarchy | Typography issues |

## 🛡️ 41 Detection Rules

Auto-detects AI design anti-patterns:
- ❌ Purple-to-blue gradients
- ❌ Cards nested in cards
- ❌ Gray text on colored backgrounds
- ❌ Inter for everything
- ❌ Rounded-square icon tiles above every heading

## 🔒 Workflow (via superpowers)

```
superpowers/brainstorming
  → Identify: user wants design quality review
  → Plan: dispatch impeccable

superpowers dispatches → impeccable
  
  Step 1: critique (UX review)
    → Hierarchy, clarity, emotional resonance
  
  Step 2: audit (technical)
    → Accessibility, performance, responsive
  
  Step 3: polish (if needed)
    → Design system alignment
    → Final pass

superpowers/verification-before-completion
  → Confirm quality meets standards
  → Present findings to user
```

## 📝 Prerequisites

- Project initialized with `/impeccable init`
- Browser extension (optional, for live iteration)

## 🔗 Resources

- [impeccable.style](https://impeccable.style)
- [Frontend design skill](https://github.com/anthropics/skills/tree/main/skills/frontend-design)
