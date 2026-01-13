# Schema

Technical specification for snippet files.

## Directory Layout

```
content/
├── general/{name}-{language}.md
├── utilities/{name}-{language}.md
├── algorithms/{name}-{language}.md
└── boilerplates/{name}-{language}.md
```

## File Naming

```
{name}-{language}.md
```

Examples: `sum-array-javascript.md`, `quicksort-python.md`

Languages: `javascript`, `python`, `ruby`, `php`, `bash`

## Frontmatter

```yaml
---
title: string           # Required: Display title
description: string     # Required: Brief description
topic: string           # Required: Topic within category

parameters:             # Optional
  - name: string        # Variable name
    type: string        # string|number|boolean|array|object
    default: any        # Default value
    description: string # Parameter description

exampleOutputs:         # Required: At least one
  - input: object       # Parameter values
    output: string      # Expected output
---
```

## Content Structure

````markdown
---
{frontmatter}
---

```{language}
{code}
```

{optional markdown content}
````

## Validation Rules

1. Filename must end with `-{language}.md`
2. At least one `exampleOutputs` entry required
3. Parameter names must be valid identifiers

## Multi-Language

Same snippet in multiple languages:
- `general/sum-array-javascript.md`
- `general/sum-array-python.md`

Grouped automatically by base name.
