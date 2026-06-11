---
name: gsap-skills
description: "Official AI skills for GSAP (GreenSock Animation Platform). Teaches agents correct GSAP usage: core API, timelines, ScrollTrigger, plugins, React/Vue/Svelte, vanilla JS and performance."
---

# gsap-skills

> Official AI skills for GSAP — the industry-standard JavaScript animation library.

## Overview

GSAP (GreenSock Animation Platform) is the most advanced JavaScript animation library. All formerly Club GSAP plugins are now free, including SplitText, MorphSVG, and more.

## Included Skills

| Skill | Description |
|-------|-------------|
| **gsap-core** | Core API — tweens, timelines, basic animation |
| **gsap-timeline** | Timeline control — sequencing, nesting, callbacks |
| **gsap-scrolltrigger** | Scroll-driven animations — pin, scrub, toggle actions |
| **gsap-plugins** | Official plugins — SplitText, MorphSVG, DrawSVG, etc. |
| **gsap-react** | React integration — useGSAP hook, cleanup |
| **gsap-frameworks** | Vue/Svelte/Angular integration |
| **gsap-performance** | Performance optimization best practices |
| **gsap-utils** | Utility functions and helpers |

## Quick Start

```javascript
// Basic tween
gsap.to(".box", { x: 200, duration: 1 });

// Timeline
const tl = gsap.timeline();
tl.from(".header", { y: -50, opacity: 0 })
  .from(".content", { y: 20, opacity: 0 }, "-=0.3");

// ScrollTrigger
gsap.to(".section", {
  scrollTrigger: {
    trigger: ".section",
    start: "top center",
    scrub: true
  },
  y: 100
});
```

## Key Principles

- **Timeline-first**: Sequence animations with timelines, not delays
- **Transform-friendly**: Animate transform and opacity for 60fps
- **Cleanup on unmount**: Kill tweens when components unmount
- **Use refs in React**: Never animate state-driven values directly

## License

MIT / GSAP Standard License
