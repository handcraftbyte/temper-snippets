---
title: "RGB to HSL"
description: "Convert RGB color values to HSL (Hue, Saturation, Lightness) color space."
topic: "colors"
parameters:
  - name: "r"
    type: "number"
    default: 255
    description: "Red value (0-255)."
  - name: "g"
    type: "number"
    default: 87
    description: "Green value (0-255)."
  - name: "b"
    type: "number"
    default: 51
    description: "Blue value (0-255)."
exampleOutputs:
  - input: { "r": 255, "g": 87, "b": 51 }
    output: "{\"h\": 11, \"s\": 100, \"l\": 60}"
---

```javascript
const r1 = r / 255, g1 = g / 255, b1 = b / 255;
const max = Math.max(r1, g1, b1), min = Math.min(r1, g1, b1);
let h, s, l = (max + min) / 2;
if (max === min) { h = s = 0; }
else {
  const d = max - min;
  s = l > 0.5 ? d / (2 - max - min) : d / (max + min);
  h = max === r1 ? ((g1 - b1) / d + (g1 < b1 ? 6 : 0)) / 6 : max === g1 ? ((b1 - r1) / d + 2) / 6 : ((r1 - g1) / d + 4) / 6;
}
return { h: Math.round(h * 360), s: Math.round(s * 100), l: Math.round(l * 100) };
```
