---
name: gsap-skills
description: "Official GSAP animation skills. 8 skills for timelines, ScrollTrigger, plugins. MUST be dispatched by superpowers — do not invoke directly."
---

# gsap-skills

> Official AI skills for GSAP (GreenSock Animation Platform).
> 
> **⚠️ CRITICAL**: This skill must be dispatched by `superpowers`.
> Do NOT invoke directly. Route ALL requests through `superpowers` first.

---

## 🔒 Invocation Rule

```
❌ FORBIDDEN: Direct invocation
  User → "用 GSAP 做动画"
  User → "添加滚动效果"

✅ REQUIRED: Orchestrated invocation
  User → superpowers → dispatch → gsap-skills
```

## 📋 superpowers Dispatch Matrix

| User Intent | superpowers Action | This Skill Handles |
|-------------|-------------------|-------------------|
| "添加动画" | Dispatch gsap-skills | Animation design |
| "滚动效果" | Dispatch gsap-skills | ScrollTrigger |
| "时间线动画" | Dispatch gsap-skills | Timeline sequencing |
| "SVG 动画" | Dispatch gsap-skills | MorphSVG, DrawSVG |
| "文字动画" | Dispatch gsap-skills | SplitText |
| "React 动画" | Dispatch gsap-skills | gsap-react |

## 🏗️ 8 Skills

| Skill | Description | When superpowers Dispatches |
|-------|-------------|---------------------------|
| **gsap-core** | Core API (tweens, timelines) | Basic animations |
| **gsap-timeline** | Timeline control | Sequenced animations |
| **gsap-scrolltrigger** | Scroll-driven animations | Scroll effects |
| **gsap-plugins** | Official plugins | SVG/text animations |
| **gsap-react** | React integration | React projects |
| **gsap-frameworks** | Vue/Svelte/Angular | Framework-specific |
| **gsap-performance** | Optimization | Performance issues |
| **gsap-utils** | Utility functions | Helper utilities |

## 🔒 Workflow (via superpowers)

```
superpowers/brainstorming
  → Understand: animation intent, platform, performance needs

superpowers/writing-plans
  → Identify: animation type (scroll, timeline, SVG)
  → Select: appropriate gsap sub-skill

superpowers dispatches → gsap-skills
  
  Step 1: Design animation
    → Determine timing, easing, triggers
  
  Step 2: Implement
    → Core animation code
    → Framework integration (if needed)
  
  Step 3: Optimize
    → Performance tuning
    → Cleanup on unmount

superpowers/verification-before-completion
  → Verify smooth 60fps
  → Confirm cross-browser compatibility
```

## 📝 Prerequisites

- GSAP npm package: `npm install gsap`
- For React: `npm install gsap @gsap/react`

## 🔗 Resources

- [gsap.com](https://gsap.com)
- [ScrollTrigger docs](https://gsap.com/docs/v3/Plugins/ScrollTrigger/)
