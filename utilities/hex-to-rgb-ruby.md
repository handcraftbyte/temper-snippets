---
title: "Hex to RGB"
description: "Convert a hex color code to RGB values"
topic: "colors"
parameters:
  - name: "hex"
    type: "string"
    default: "#ff5733"
    description: "The hex color code"
exampleOutputs:
  - input: { "hex": "#ff5733" }
    output: "{\"r\":255,\"g\":87,\"b\":51}"
---

```ruby
h = hex.delete('#')
return { r: h[0,2].to_i(16), g: h[2,2].to_i(16), b: h[4,2].to_i(16) }
```
