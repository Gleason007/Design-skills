---
name: mcp-server-guide
description: "Official Figma MCP Server guide. 9 skills for bidirectional Figma-AI operations. MUST be dispatched by superpowers — do not invoke directly."
---

# mcp-server-guide

> Figma 官方 MCP Server — 9 skills for bidirectional Figma-AI operations.
> 
> **⚠️ CRITICAL**: This skill must be dispatched by `superpowers`.
> Do NOT invoke directly. Route ALL requests through `superpowers` first.

---

## 🔒 Invocation Rule

```
❌ FORBIDDEN: Direct invocation
  User → figma-use → ...

✅ REQUIRED: Orchestrated invocation
  User → superpowers → dispatch → mcp-server-guide
```

## 📋 superpowers Dispatch Matrix

| User Intent | superpowers Action | This Skill Handles |
|-------------|-------------------|-------------------|
| "连接 Figma" | Dispatch mcp-server-guide | figma-use (MCP connection) |
| "读取设计稿" | Dispatch mcp-server-guide | figma-use (read file/frames) |
| "生成代码" | Dispatch mcp-server-guide | figma-code-connect (component mapping) |
| "创建新文件" | Dispatch mcp-server-guide | figma-create-new-file |
| "生成流程图" | Dispatch mcp-server-guide | figma-generate-diagram (Mermaid) |
| "构建设计系统" | Dispatch mcp-server-guide | figma-generate-library |
| "同步到 Figma" | Dispatch mcp-server-guide | figma-generate-design (code → Figma) |
| "SwiftUI 桥接" | Dispatch mcp-server-guide | figma-swiftui |
| "白板操作" | Dispatch mcp-server-guide | figma-use-figjam |
| "幻灯片" | Dispatch mcp-server-guide | figma-use-slides |

## 🏗️ 9 Sub-Skills

### 1. figma-use (CORE — all operations require this)

**MUST be loaded before ANY `use_figma` call.**

- Returns data via `return` (not `figma.closePlugin()`)
- Top-level `await` supported
- Colors are 0-1 range: `{r: 1, g: 0, b: 0}` = red
- **CRITICAL**: `await figma.setCurrentPageAsync(page)` for page switching
- **CRITICAL**: `await` every Promise
- **CRITICAL**: Return ALL created/mutated node IDs

### 2. figma-code-connect

- Maps Figma components ↔ code components
- Creates `.figma.ts` template files
- Requires: published components, org/enterprise plan

### 3. figma-generate-design

- Code/description → Figma design
- Uses design system components (not primitives)
- **MUST load figma-use first**

### 4. figma-generate-library

- Builds professional design systems
- 6 phases: Discovery → Foundations → File Structure → Components → Documentation → Publish
- **Never one-shot** — requires 20-100+ `use_figma` calls

### 5. figma-generate-diagram

- Mermaid.js → Figma diagrams
- Supports: flowchart, sequenceDiagram, stateDiagram, gantt, erDiagram
- **No emojis** in Mermaid source

### 6. figma-swiftui

- Figma ↔ SwiftUI bidirectional
- Design → code: `get_design_context` with `clientLanguages: "swift"`
- Code → design: `use_figma` + `figma-use`

### 7. figma-create-new-file

- Creates blank Figma/FigJam/Slides files
- Arguments: `/figma-create-new-file [editorType] [fileName]`

### 8. figma-use-figjam

- FigJam (whiteboard) operations
- URL: `figma.com/board/...`
- `get_figjam` for inspection

### 9. figma-use-slides

- Figma Slides presentations
- URL: `figma.com/slides/...`
- `appendChild` before setting `x`/`y`

## 📝 Prerequisites

- Figma Professional, Organization, or Enterprise
- Dev seat or Full seat (Starter/View/Collab: 6 calls/month)
- Figma MCP Server: `https://mcp.figma.com/mcp`
- Rate limits: Dev seat = per minute; Starter = 6/month

## 🔗 Resources

- [Figma MCP Docs](https://developers.figma.com/docs/figma-mcp-server/)
- [Figma REST API](https://developers.figma.com/docs/rest-api/rate-limits/)
- [Code Connect](https://help.figma.com/hc/en-us/articles/23920389749655-Code-Connect)
