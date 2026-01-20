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
    output: "{\"r\":255,\"g\":87,\"b\":51}"
---

```bash
h="${hex#\#}"
r=$((16#${h:0:2}))
g=$((16#${h:2:2}))
b=$((16#${h:4:2}))
echo "{\"r\":$r,\"g\":$g,\"b\":$b}"
```
