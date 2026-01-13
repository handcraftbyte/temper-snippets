---
title: "Random Hex Color"
description: "Generate a random hex color code"
topic: "colors"
parameters: []
exampleOutputs:
  - input: {}
    output: "#a3f2c1"
---

```php
sprintf('#%06x', mt_rand(0, 0xffffff));
```
