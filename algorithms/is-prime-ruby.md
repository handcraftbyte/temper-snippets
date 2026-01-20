---
title: "Is Prime"
description: "Check if a number is a prime number by testing divisibility up to its square root."
topic: "math"
relatedSlugs:
  - "is-prime-javascript"
  - "is-prime-python"
  - "is-prime-php"
  - "is-prime-bash"
parameters:
  - name: "num"
    type: "number"
    default: 17
    description: "The number to check"
exampleOutputs:
  - input: { "num": 17 }
    output: "true"
  - input: { "num": 15 }
    output: "false"
  - input: { "num": 2 }
    output: "true"
---

```ruby
require 'prime'
return Prime.prime?(num)
```
