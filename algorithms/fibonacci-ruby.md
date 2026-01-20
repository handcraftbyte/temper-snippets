---
title: "Fibonacci Sequence"
description: "Generate the first N numbers of the Fibonacci sequence where each number is the sum of the two preceding ones."
topic: "math"
relatedSlugs:
  - "fibonacci-javascript"
  - "fibonacci-python"
  - "fibonacci-php"
  - "fibonacci-bash"
parameters:
  - name: "n"
    type: "number"
    default: 10
    description: "Number of Fibonacci numbers to generate"
exampleOutputs:
  - input: { "n": 10 }
    output: "[0, 1, 1, 2, 3, 5, 8, 13, 21, 34]"
  - input: { "n": 5 }
    output: "[0, 1, 1, 2, 3]"
---

```ruby
fib = [0, 1]
(2...n).each { |i| fib << fib[i-1] + fib[i-2] }
fib.take(n)
```
