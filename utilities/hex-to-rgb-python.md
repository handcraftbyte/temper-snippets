---
title: "Hex to RGB"
description: "Convert a hex color code to RGB values."
topic: "colors"
parameters:
  - name: "hex"
    type: "string"
    default: "#ff5733"
    description: "The hex color code."
exampleOutputs:
  - input: { "hex": "#ff5733" }
    output: "{\"r\": 255, \"g\": 87, \"b\": 51}"
---

```python
h = hex.lstrip('#')
return {'r': int(h[0:2], 16), 'g': int(h[2:4], 16), 'b': int(h[4:6], 16)}
```
