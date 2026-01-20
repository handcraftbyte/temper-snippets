---
title: "RGB to Hex"
description: "Convert RGB color values (0-255) to a hexadecimal color code."
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
    output: "#ff5733"
---

```ruby
'#%02x%02x%02x' % [r, g, b]
```
