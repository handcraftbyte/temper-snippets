---
title: "Wrap Text"
description: "Wrap text at a specified character width."
topic: "strings"
relatedSlugs:
  - "wrap-text-javascript"
  - "wrap-text-python"
  - "wrap-text-ruby"
  - "wrap-text-php"
parameters:
  - name: "str"
    type: "string"
    default: "Lorem ipsum dolor sit amet consectetur adipiscing elit"
    description: "The text to wrap"
  - name: "width"
    type: "number"
    default: 20
    description: "Maximum line width"
exampleOutputs:
  - input: { "str": "Lorem ipsum dolor sit amet consectetur adipiscing elit", "width": 20 }
    output: "Lorem ipsum dolor\\nsit amet consectetur\\nadipiscing elit"
---

```bash
echo "$str" | fold -sw "$width"
```
