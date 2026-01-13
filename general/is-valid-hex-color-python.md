---
title: "Validate Hex Color"
description: "Check if a string is a valid hex color code"
topic: "validation"
parameters:
  - name: "color"
    type: "string"
    default: "#ff5733"
    description: "The hex color to validate"
exampleOutputs:
  - input: { "color": "#ff5733" }
    output: "True"
  - input: { "color": "#f53" }
    output: "True"
  - input: { "color": "red" }
    output: "False"
---

```python
import re
return bool(re.match(r'^#([0-9A-Fa-f]{3}){1,2}$', color))
```
