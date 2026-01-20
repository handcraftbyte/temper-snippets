---
title: "Blend Colors"
description: "Blend two hex colors together with a customizable ratio."
topic: "colors"
parameters:
  - name: "color1"
    type: "string"
    default: "#ff0000"
    description: "First hex color"
  - name: "color2"
    type: "string"
    default: "#0000ff"
    description: "Second hex color"
  - name: "ratio"
    type: "number"
    default: 0.5
    description: "Blend ratio (0-1)"
exampleOutputs:
  - input: { "color1": "#ff0000", "color2": "#0000ff", "ratio": 0.5 }
    output: "#800080"
---

```javascript
const c1 = parseInt(color1.slice(1), 16), c2 = parseInt(color2.slice(1), 16);
const r = Math.round(((c1 >> 16) & 255) * (1 - ratio) + ((c2 >> 16) & 255) * ratio);
const g = Math.round(((c1 >> 8) & 255) * (1 - ratio) + ((c2 >> 8) & 255) * ratio);
const b = Math.round((c1 & 255) * (1 - ratio) + (c2 & 255) * ratio);
return '#' + [r, g, b].map(x => x.toString(16).padStart(2, '0')).join('');
```
