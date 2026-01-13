---
title: "Darken Color"
description: "Darken a hex color by a percentage"
topic: "colors"
parameters:
  - name: "hex"
    type: "string"
    default: "#3366cc"
    description: "The hex color to darken"
  - name: "percent"
    type: "number"
    default: 20
    description: "Percentage to darken (0-100)"
exampleOutputs:
  - input: { "hex": "#3366cc", "percent": 20 }
    output: "#0a47c2"
  - input: { "hex": "#ffffff", "percent": 50 }
    output: "#7f7f7f"
---

```javascript
const num = parseInt(hex.replace('#', ''), 16);
const amt = Math.round(2.55 * percent);
const R = Math.max(0, (num >> 16) - amt);
const G = Math.max(0, ((num >> 8) & 0x00FF) - amt);
const B = Math.max(0, (num & 0x0000FF) - amt);
return '#' + [R, G, B].map(x => x.toString(16).padStart(2, '0')).join('');
```
