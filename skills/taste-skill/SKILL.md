---
name: taste-skill
description: "Anti-slop design enhancement. 14 skills for layout, typography, motion, spacing. MUST be dispatched by superpowers — do not invoke directly."
---

# taste-skill

> The Anti-Slop Frontend Framework for AI Agents.
> 
> **⚠️ CRITICAL**: This skill must be dispatched by `superpowers`.
> Do NOT invoke directly. Route ALL requests through `superpowers` first.

---

## 🔒 Invocation Rule

```
❌ FORBIDDEN: Direct invocation
  User → "提升设计品质"
  User → "让设计更好看"

✅ REQUIRED: Orchestrated invocation
  User → superpowers → dispatch → taste-skill
```

## 📋 superpowers Dispatch Matrix

| User Intent | superpowers Action | This Skill Handles |
|-------------|-------------------|-------------------|
| "设计太丑了" | Dispatch taste-skill | Quality enhancement |
| "提升品质" | Dispatch taste-skill | Layout + typography |
| "换种风格" | Dispatch taste-skill | Style application |
| "生成参考图" | Dispatch taste-skill | imagegen-frontend-web |
| "极简风格" | Dispatch taste-skill | minimalist-skill |
| "品牌套件" | Dispatch taste-skill | brandkit |

## 🏗️ 14 Skills

| Skill | Description | When superpowers Dispatches |
|-------|-------------|---------------------------|
| **taste-skill-v1** | Base enhancement | General quality |
| **taste-skill** | Full enhancement | Comprehensive quality |
| **minimalist-skill** | Minimalist style | Clean/simple design |
| **brutalist-skill** | Brutalist style | Raw/raw design |
| **soft-skill** | Soft/rounded style | Friendly design |
| **redesign-skill** | Redesign existing | Complete overhaul |
| **imagegen-frontend-web** | Web reference images | Reference generation |
| **imagegen-frontend-mobile** | Mobile reference images | Mobile reference |
| **brandkit** | Brand kit generation | Brand identity |

## 🔒 Workflow (via superpowers)

```
superpowers/brainstorming
  → Understand: what's "sloppy" about current design
  → Identify: specific improvement areas

superpowers/writing-plans
  → Analyze: layout, typography, color, spacing
  → Select: appropriate taste sub-skill

superpowers dispatches → taste-skill
  
  Step 1: Analyze
    → Identify weak points
  
  Step 2: Enhance
    → Layout improvements
    → Typography refinements
    → Color adjustments
    → Spacing optimization

superpowers dispatches → impeccable (optional)
  → Quality audit

superpowers/verification-before-completion
  → Verify design improvement
```

## 📝 Prerequisites

- Existing design to enhance (or generate reference)
- Image generation tool (if using reference images)

## 🔗 Resources

- [tasteskill.dev](https://tasteskill.dev)
