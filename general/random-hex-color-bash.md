---
title: "Random Hex Color"
description: "Generate a random hexadecimal color code for use in CSS or graphics applications."
topic: "colors"
parameters: []
exampleOutputs:
  - input: {}
    output: "#a3f2c1"
---

```bash
printf '#%06x\n' $((RANDOM * RANDOM % 16777216))
```
