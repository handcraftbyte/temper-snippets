---
title: "Is Light Color"
description: "Check if a hex color is light (good for determining text color)"
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

```ruby
h = hex.delete('#')
r, g, b = h[0,2].to_i(16), h[2,2].to_i(16), h[4,2].to_i(16)
return (r * 0.299 + g * 0.587 + b * 0.114) > 186
```
