---
title: "Nth Prime"
description: "Find the nth prime number using primality testing."
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

```php
function isPrime($x) {
    if ($x < 2) return false;
    for ($i = 2; $i * $i <= $x; $i++) {
        if ($x % $i === 0) return false;
    }
    return true;
}
$count = 0; $num = 1;
while ($count < $n) {
    $num++;
    if (isPrime($num)) $count++;
}
$num;
```
