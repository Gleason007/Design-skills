---
name: mcp-server-guide
description: "Official Figma MCP Server guide. 9 skills enabling bidirectional Figma-AI operations: read/write designs, generate code from frames, extract design context, build design systems, create diagrams, SwiftUI translation, and more."
---

# mcp-server-guide

> Official Figma MCP Server — connect AI agents directly to Figma.

## Overview

The Figma MCP server brings Figma directly into AI workflows by providing design information and context for code generation.

## 9 Skills

| # | Skill | Description |
|---|-------|-------------|
| 1 | **figma-use** | Plugin API execution — ALL operations require this |
| 2 | **figma-code-connect** | Component ↔ code mapping |
| 3 | **figma-generate-design** | Code → Figma design generation |
| 4 | **figma-generate-library** | Build/update design system libraries |
| 5 | **figma-generate-diagram** | Mermaid → Figma diagrams |
| 6 | **figma-swiftui** | Figma ↔ SwiftUI bidirectional |
| 7 | **figma-create-new-file** | Create new Figma/FigJam/Slides files |
| 8 | **figma-use-figjam** | FigJam (whiteboard) operations |
| 9 | **figma-use-slides** | Figma Slides presentations |

## Prerequisites

- Figma Professional, Organization, or Enterprise plan
- Dev seat or Full seat (Starter/View/Collab limited to 6 calls/month)
- Figma MCP Server URL: `https://mcp.figma.com/mcp`

## Usage

```bash
# Always load figma-use first
use_figma + figma-use

# Generate design from code
use_figma + figma-generate-design

# Map components to code
figma-code-connect
```

## License

Figma Developer Terms
