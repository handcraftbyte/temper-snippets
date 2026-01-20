---
title: "Validate Hex Color"
description: "Check if a string is a valid hex color code."
topic: "validation"
parameters:
  - name: "color"
    type: "string"
    default: "#ff5733"
    description: "The hex color to validate"
exampleOutputs:
  - input: { "color": "#ff5733" }
    output: "true"
  - input: { "color": "#f53" }
    output: "true"
  - input: { "color": "red" }
    output: "false"
---

```bash
[[ "$color" =~ ^#([0-9A-Fa-f]{3}|[0-9A-Fa-f]{6})$ ]] && echo "true" || echo "false"
```
