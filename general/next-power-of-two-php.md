---
title: "Next Power of Two"
description: "Find the next power of two greater than or equal to a given number."
topic: "math"
parameters:
  - name: "n"
    type: "number"
    default: 13
    description: "Number"
exampleOutputs:
  - input: { "n": 13 }
    output: "16"
---

```php
$n <= 1 ? 1 : pow(2, ceil(log($n, 2)));
```
