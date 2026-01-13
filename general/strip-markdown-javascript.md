---
title: "Strip Markdown"
description: "Remove Markdown formatting and return plain text"
topic: "strings"
parameters:
  - name: "markdown"
    type: "string"
    default: "# Hello **World**\n\nThis is a [link](https://example.com) and `code`."
    description: "Markdown text"
exampleOutputs:
  - input: { "markdown": "**bold** and *italic*" }
    output: "bold and italic"
  - input: { "markdown": "# Header\n\nParagraph" }
    output: "Header\n\nParagraph"
---

```javascript
markdown
  .replace(/^#{1,6}\s+/gm, '')           // Headers
  .replace(/\*\*(.+?)\*\*/g, '$1')       // Bold
  .replace(/\*(.+?)\*/g, '$1')           // Italic
  .replace(/__(.+?)__/g, '$1')           // Bold alt
  .replace(/_(.+?)_/g, '$1')             // Italic alt
  .replace(/`{3}[\s\S]*?`{3}/g, '')      // Code blocks
  .replace(/`(.+?)`/g, '$1')             // Inline code
  .replace(/\[(.+?)\]\(.+?\)/g, '$1')    // Links
  .replace(/!\[.*?\]\(.+?\)/g, '')       // Images
  .replace(/^\s*[-*+]\s+/gm, '')         // List items
  .replace(/^\s*\d+\.\s+/gm, '')         // Numbered lists
  .replace(/^\s*>/gm, '')                // Blockquotes
  .replace(/---/g, '')                   // Horizontal rules
  .trim();
```
