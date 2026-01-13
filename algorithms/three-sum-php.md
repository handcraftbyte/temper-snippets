---
title: "Three Sum"
description: "Find all unique triplets that sum to target"
topic: "arrays"
parameters:
  - name: "arr"
    type: "array"
    default: [-1, 0, 1, 2, -1, -4]
    description: "Array of numbers"
  - name: "target"
    type: "number"
    default: 0
    description: "Target sum"
exampleOutputs:
  - input: { "arr": [-1, 0, 1, 2, -1, -4], "target": 0 }
    output: "[[-1,-1,2],[-1,0,1]]"
---

```php
sort($arr);
$result = [];
for ($i = 0; $i < count($arr) - 2; $i++) {
    if ($i > 0 && $arr[$i] === $arr[$i - 1]) continue;
    $l = $i + 1; $r = count($arr) - 1;
    while ($l < $r) {
        $s = $arr[$i] + $arr[$l] + $arr[$r];
        if ($s === $target) {
            $result[] = [$arr[$i], $arr[$l], $arr[$r]];
            while ($l < $r && $arr[$l] === $arr[$l + 1]) $l++;
            while ($l < $r && $arr[$r] === $arr[$r - 1]) $r--;
            $l++; $r--;
        } elseif ($s < $target) $l++;
        else $r--;
    }
}
return $result;
```
