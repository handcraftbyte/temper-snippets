---
title: "Lighten Color"
description: "Lighten a hex color by a percentage."
topic: "colors"
parameters:
  - name: "hex"
    type: "string"
    default: "#3366cc"
    description: "The hex color to lighten"
  - name: "percent"
    type: "number"
    default: 20
    description: "Percentage to lighten (0-100)"
exampleOutputs:
  - input: { "hex": "#3366cc", "percent": 20 }
    output: "#5c85d6"
  - input: { "hex": "#000000", "percent": 50 }
    output: "#808080"
---

```javascript
const num = parseInt(hex.replace('#', ''), 16);
const amt = Math.round(2.55 * percent);
const R = Math.min(255, (num >> 16) + amt);
const G = Math.min(255, ((num >> 8) & 0x00FF) + amt);
const B = Math.min(255, (num & 0x0000FF) + amt);
return '#' + [R, G, B].map(x => x.toString(16).padStart(2, '0')).join('');
```
