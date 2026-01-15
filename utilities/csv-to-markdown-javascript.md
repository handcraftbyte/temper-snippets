---
title: "CSV to Markdown Table"
description: "Convert CSV to a markdown table"
topic: "formatting"
parameters:
  - name: "csv"
    type: "string"
    default: "name,age,city\nJohn,30,NYC\nJane,25,LA"
    description: "CSV string with headers in first row"
exampleOutputs:
  - input: { "csv": "name,age\nJohn,30\nJane,25" }
    output: "| name | age |\n| --- | --- |\n| John | 30 |\n| Jane | 25 |"
---

```javascript
const lines = csv.trim().split('\n');
const headers = lines[0].split(',').map(h => h.trim());
const separator = headers.map(() => '---');
const rows = lines.slice(1).map(line => line.split(',').map(c => c.trim()));

const formatRow = cells => `| ${cells.join(' | ')} |`;
return [
  formatRow(headers),
  formatRow(separator),
  ...rows.map(formatRow)
].join('\n');
```
