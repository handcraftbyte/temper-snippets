---
title: "Random Hex Color"
description: "Generate a random hex color code"
topic: "colors"
parameters: []
exampleOutputs:
  - input: {}
    output: "#a3f2c1"
---

```bash
printf '#%06x\n' $((RANDOM * RANDOM % 16777216))
```
