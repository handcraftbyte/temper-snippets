---
title: "RGB to Hex"
description: "Convert RGB values to a hex color code"
topic: "colors"
parameters:
  - name: "r"
    type: "number"
    default: 255
    description: "Red value (0-255)"
  - name: "g"
    type: "number"
    default: 87
    description: "Green value (0-255)"
  - name: "b"
    type: "number"
    default: 51
    description: "Blue value (0-255)"
exampleOutputs:
  - input: { "r": 255, "g": 87, "b": 51 }
    output: "#ff5733"
  - input: { "r": 0, "g": 0, "b": 0 }
    output: "#000000"
---

```javascript
'#' + [r, g, b].map(x => x.toString(16).padStart(2, '0')).join('');
```
