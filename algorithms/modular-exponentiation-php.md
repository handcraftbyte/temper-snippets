---
title: "Modular Exponentiation"
description: "Calculate (base^exp) % mod efficiently"
topic: "math"
parameters:
  - name: "base"
    type: "number"
    default: 2
    description: "Base number"
  - name: "exp"
    type: "number"
    default: 10
    description: "Exponent"
  - name: "mod"
    type: "number"
    default: 1000
    description: "Modulus"
exampleOutputs:
  - input: { "base": 2, "exp": 10, "mod": 1000 }
    output: "24"
---

```php
$result = 1;
$b = $base % $mod;
$e = $exp;
while ($e > 0) {
    if ($e % 2 === 1) $result = ($result * $b) % $mod;
    $e = intdiv($e, 2);
    $b = ($b * $b) % $mod;
}
return $result;
```
