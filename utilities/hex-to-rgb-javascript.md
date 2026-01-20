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
  - input: { "hex": "#000000" }
    output: "{\"r\": 0, \"g\": 0, \"b\": 0}"
---

```javascript
const result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
return result ? { r: parseInt(result[1], 16), g: parseInt(result[2], 16), b: parseInt(result[3], 16) } : null;
```
