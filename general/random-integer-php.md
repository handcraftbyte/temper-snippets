---
title: "Random Integer"
description: "Generate a random integer within an inclusive range specified by minimum and maximum values."
topic: "math"
relatedSlugs:
  - "random-integer-javascript"
  - "random-integer-python"
  - "random-integer-ruby"
  - "random-integer-bash"
parameters:
  - name: "min"
    type: "number"
    default: 1
    description: "Minimum value (inclusive)"
  - name: "max"
    type: "number"
    default: 100
    description: "Maximum value (inclusive)"
exampleOutputs:
  - input: { "min": 1, "max": 100 }
    output: "42"
  - input: { "min": 1, "max": 6 }
    output: "4"
---

```php
rand($min, $max);
```
