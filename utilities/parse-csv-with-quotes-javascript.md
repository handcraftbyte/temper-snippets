---
title: "Parse CSV with Quotes"
description: "Parse CSV handling quoted fields containing commas and escaped quotes. Follows RFC 4180 standard for proper CSV parsing."
topic: "strings"
tags:
  - csv
  - parsing
  - data
  - rfc4180
  - import
parameters:
  - name: "csv"
    type: "string"
    default: 'name,description,price\n"Widget","A small, handy tool",9.99\n"Gadget","Say ""hello""",19.99'
    description: "CSV content"
exampleOutputs:
  - input: { "csv": "a,\"b,c\",d" }
    output: '[["a","b,c","d"]]'
---

```javascript
const rows = [];
let row = [], field = '', inQuotes = false;
for (let i = 0; i < csv.length; i++) {
  const c = csv[i], next = csv[i + 1];
  if (inQuotes) {
    if (c === '"' && next === '"') { field += '"'; i++; }
    else if (c === '"') inQuotes = false;
    else field += c;
  } else {
    if (c === '"') inQuotes = true;
    else if (c === ',') { row.push(field); field = ''; }
    else if (c === '\n' || (c === '\r' && next === '\n')) {
      row.push(field); rows.push(row); row = []; field = '';
      if (c === '\r') i++;
    } else field += c;
  }
}
if (field || row.length) { row.push(field); rows.push(row); }
return rows;
```

## Why Not Just Split on Commas?

Simple splitting breaks on quoted content:

```javascript
// WRONG: Splits inside quotes
"hello,world".split(',')           // ["hello", "world"] ✓
'"hello,world"'.split(',')         // ['"hello', 'world"'] ✗

// Need proper parsing:
parseCSV('"hello,world"')          // [["hello,world"]] ✓
```

## RFC 4180 Rules

This parser follows the CSV standard:

| Rule | Example |
|------|---------|
| Fields separated by commas | `a,b,c` |
| Rows separated by newlines | `a,b\nc,d` |
| Quotes wrap fields with special chars | `"has,comma"` |
| Escaped quotes are doubled | `"say ""hello"""` → `say "hello"` |
| Newlines allowed in quoted fields | `"line1\nline2"` |

## Parsing Examples

```csv
Input:
name,description,price
"Widget","A small, handy tool",9.99
"Gadget","Say ""hello""",19.99

Output:
[
  ["name", "description", "price"],
  ["Widget", "A small, handy tool", "9.99"],
  ["Gadget", "Say \"hello\"", "19.99"]
]
```

## Common Edge Cases

```javascript
// Empty fields
"a,,c"           → ["a", "", "c"]

// Quoted empty string
'a,"",c'         → ["a", "", "c"]

// Only whitespace (preserved)
"a, b ,c"        → ["a", " b ", "c"]

// Newline in quoted field
'"line1\nline2"' → ["line1\nline2"]
```

## Converting to Objects

To get objects with headers as keys:

```javascript
const [headers, ...data] = rows;
const objects = data.map(row =>
  Object.fromEntries(headers.map((h, i) => [h, row[i]]))
);
// [{name: "Widget", description: "A small, handy tool", price: "9.99"}, ...]
```

## When to Use a Library

For production CSV handling, consider:

- **Papa Parse** — Fast, streaming, auto-detect delimiters
- **csv-parse** — Node.js streams, extensive options
- **D3-dsv** — Part of D3.js, handles TSV too

This snippet is perfect for quick parsing of known-good CSV data.
