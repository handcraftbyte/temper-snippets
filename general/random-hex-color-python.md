---
title: "Random Hex Color"
description: "Generate a random hexadecimal color code for use in CSS or graphics applications."
topic: "colors"
parameters: []
exampleOutputs:
  - input: {}
    output: "#a3f2c1"
---

```python
import random
return f'#{random.randint(0, 16777215):06x}'
```
