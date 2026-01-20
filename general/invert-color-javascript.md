---
title: "Invert Color"
description: "Invert a hex color (get complementary color)."
topic: "colors"
parameters:
  - name: "hex"
    type: "string"
    default: "#ffffff"
    description: "Hex color to invert"
exampleOutputs:
  - input: { "hex": "#ffffff" }
    output: "#000000"
  - input: { "hex": "#ff0000" }
    output: "#00ffff"
---

```javascript
'#' + (0xFFFFFF ^ parseInt(hex.slice(1), 16)).toString(16).padStart(6, '0');
```
