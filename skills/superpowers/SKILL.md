---
name: superpowers
description: "Orchestrator for all design/development tasks. MUST be invoked FIRST before any other skill. Manages task lifecycle: analyze → plan → dispatch → verify → complete."
---

# superpowers

> **Orchestrator — The ONLY entry point for all tasks.**
> 
> This skill manages the complete task lifecycle:
> **brainstorm → plan → dispatch → verify → complete**

---

## ⚡ CRITICAL: This is the ONLY entry point

```
User Request
      │
      ▼
┌─────────────────────┐
│  1. superpowers     │  ← ALWAYS FIRST
│     (brainstorm)    │
└──────────┬──────────┘
           │
     ┌─────┴─────┐
     ▼           ▼
┌──────────┐  ┌──────────┐
│ Dispatch │  │ Dispatch │
│ to figma │  │ to design│
│ MCP      │  │ system   │
└──────────┘  └──────────┘
     │           │
     └─────┬─────┘
           ▼
┌─────────────────────┐
│  2. superpowers     │
│     (verify)        │
└─────────────────────┘
```

## 🎯 When to Invoke

**Invoke superpowers for ANY task:**
- ✅ Design requests
- ✅ Development requests
- ✅ Figma operations
- ✅ Animation requests
- ✅ Quality audits
- ✅ ANYTHING — superpowers handles routing

## 🔀 The 14 Sub-Skills

| # | Skill | Purpose | When to Use |
|---|-------|---------|------------|
| 1 | **brainstorming** | Explore requirements | EVERY task starts here |
| 2 | **writing-plans** | Write implementation plan | After brainstorming |
| 3 | **executing-plans** | Execute plan | After planning |
| 4 | **subagent-driven-development** | Use sub-agents | Complex tasks |
| 5 | **systematic-debugging** | Debug issues | When something fails |
| 6 | **test-driven-development** | TDD | Before writing code |
| 7 | **verification-before-completion** | Verify before shipping | EVERY task ends here |
| 8 | **requesting-code-review** | Code review | Before merge |
| 9 | **receiving-code-review** | Process feedback | After review |
| 10 | **dispatching-parallel-agents** | Parallel tasks | Multiple independent tasks |
| 11 | **finishing-a-development-branch** | Clean completion | Branch cleanup |
| 12 | **using-git-worktrees** | Git worktrees | Isolation needed |
| 13 | **using-superpowers** | Base usage | Reference |
| 14 | **writing-skills** | Custom skills | Extend capabilities |

## 🔄 Task Lifecycle

### Phase 1: RECEIVE (brainstorming)

```
User: "帮我设计一个登录页面"

superpowers/brainstorming
  → Understand: login page, user flow, brand context
  → Identify: needs design system + Figma + quality audit
  → Result: Task defined, skills identified
```

### Phase 2: PLAN (writing-plans)

```
superpowers/writing-plans
  → Sub-task 1: Generate design system (ui-ux-pro-max-skill)
  → Sub-task 2: Build in Figma (mcp-server-guide)
  → Sub-task 3: Audit quality (impeccable)
  → Timeline: Sequential
  → Dependencies: 1 → 2 → 3
```

### Phase 3: DISPATCH

```
superpowers dispatches → ui-ux-pro-max-skill
  → Generates design system
  
superpowers dispatches → mcp-server-guide
  → Builds in Figma
  
superpowers dispatches → impeccable
  → Audits quality
```

### Phase 4: VERIFY

```
superpowers/verification-before-completion
  → Check: design system complete?
  → Check: Figma file correct?
  → Check: quality passes audit?
  → Result: ✅ All pass
```

### Phase 5: COMPLETE

```
superpowers/finishing-a-development-branch
  → Summarize results
  → Present to user
  → Mark complete
```

## 📋 Dispatch Matrix

| User Says | superpowers Action | Dispatches To |
|-----------|-------------------|--------------|
| "设计一个页面" | Analyze → Plan → Dispatch | ui-ux-pro-max-skill |
| "同步到 Figma" | Analyze → Plan → Dispatch | mcp-server-guide |
| "添加动画" | Analyze → Plan → Dispatch | gsap-skills |
| "审核质量" | Analyze → Plan → Dispatch | impeccable |
| "参考 Airbnb" | Analyze → Plan → Dispatch | awesome-design-md |
| "提升设计" | Analyze → Plan → Dispatch | taste-skill |
| "帮我看看" | Analyze → Plan → Dispatch | impeccable + taste-skill |

## 🚫 Forbidden Actions

**NEVER** do the following:

| ❌ Forbidden | ✅ Correct |
|-------------|----------|
| Skip brainstorming | Always start with superpowers/brainstorming |
| Skip planning | Always plan with superpowers/writing-plans |
| Skip verification | Always verify with superpowers/verification |
| Direct invoke other skills | Always route through superpowers |
| Parallel without coordination | superpowers coordinates all parallel work |

## 📝 Prerequisites

- None — superpowers is the starting point

## 🔗 Resources

- [obra/superpowers](https://github.com/obra/superpowers)
