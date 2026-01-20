---
title: "Is Light Color"
description: "Check if a hex color is light (good for determining text color)."
topic: "colors"
parameters:
  - name: "hex"
    type: "string"
    default: "#f0f0f0"
    description: "Hex color to check"
exampleOutputs:
  - input: { "hex": "#f0f0f0" }
    output: "True"
  - input: { "hex": "#333333" }
    output: "False"
---

```python
h = hex.lstrip('#')
r, g, b = int(h[0:2], 16), int(h[2:4], 16), int(h[4:6], 16)
return (r * 0.299 + g * 0.587 + b * 0.114) > 186
```
