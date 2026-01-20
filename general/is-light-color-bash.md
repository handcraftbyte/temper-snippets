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
    output: "true"
  - input: { "hex": "#333333" }
    output: "false"
---

```bash
h="${hex#\#}"
r=$((16#${h:0:2}))
g=$((16#${h:2:2}))
b=$((16#${h:4:2}))
lum=$(echo "$r * 0.299 + $g * 0.587 + $b * 0.114" | bc)
[[ $(echo "$lum > 186" | bc) -eq 1 ]] && echo "true" || echo "false"
```
