---
title: "Nth Prime"
description: "Find the nth prime number"
topic: "math"
parameters:
  - name: "n"
    type: "number"
    default: 10
    description: "Position (1-indexed)"
exampleOutputs:
  - input: { "n": 10 }
    output: "29"
---

```ruby
require 'prime'
return Prime.first(n).last
```
