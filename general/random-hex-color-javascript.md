---
title: "Random Hex Color"
description: "Generate a random hex color code"
topic: "colors"
parameters: []
exampleOutputs:
  - input: {}
    output: "#a3f2c1"
  - input: {}
    output: "#5d8bf4"
---

```javascript
'#' + Math.floor(Math.random() * 16777215).toString(16).padStart(6, '0');
```
