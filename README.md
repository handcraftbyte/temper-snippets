# Temper Snippets

Runnable code snippets for common programming tasks.

## Structure

```
content/
├── general/        # Common operations (arrays, strings, math)
├── utilities/      # Encoding, formatting, parsing, validation
├── algorithms/     # Sorting, searching, math algorithms
└── boilerplates/   # Patterns and templates
```

## Adding a Snippet

1. Create `{name}-{language}.md` in the appropriate folder
2. Add frontmatter and code block
3. Run `./snippets.sh validate`

## Snippet Format

Snippets are stored in Markdown files to include additional context, metadata and information.

````markdown
---
title: "Sum Array"
slug: "sum-array-javascript"
description: "Sum all numbers in an array"
language: "javascript"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [1, 2, 3, 4, 5]
    description: "Numbers to sum"
exampleOutputs:
  - input: { "arr": [1, 2, 3] }
    output: "6"
---

```javascript
arr.reduce((sum, n) => sum + n, 0)
```

Additional rich content description for the snippet
````

### Parameter Types

| Type | Example |
|------|---------|
| `string` | `"hello"` |
| `number` | `42` |
| `boolean` | `true` |
| `array` | `[1, 2, 3]` |
| `object` | `{"key": "value"}` |

### Languages

| Language | Output Method |
|----------|---------------|
| JavaScript | Last expression returned |
| Python | Last expression returned |
| Ruby | Last expression returned |
| PHP | `echo` or last expression |
| Bash | `echo` |

## Technical Reference

See [SCHEMA.md](./SCHEMA.md) for the complete specification.

## Snippets Validator

```bash
./snippets.sh count      # Show snippet counts
./snippets.sh topics     # List all topics
./snippets.sh validate   # Validate snippets
```

