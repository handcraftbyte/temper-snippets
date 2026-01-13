---
title: "Sieve of Eratosthenes"
description: "Generate all primes up to n using the sieve algorithm"
topic: "math"
parameters:
  - name: "n"
    type: "number"
    default: 50
    description: "Upper limit"
exampleOutputs:
  - input: { "n": 50 }
    output: "[2,3,5,7,11,13,17,19,23,29,31,37,41,43,47]"
---

```php
$sieve = array_fill(0, $n + 1, true);
$sieve[0] = $sieve[1] = false;
for ($i = 2; $i * $i <= $n; $i++) {
    if ($sieve[$i]) {
        for ($j = $i * $i; $j <= $n; $j += $i) {
            $sieve[$j] = false;
        }
    }
}
array_keys(array_filter($sieve));
```
