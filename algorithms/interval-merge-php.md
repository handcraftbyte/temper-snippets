---
title: "Merge Intervals"
description: "Merge overlapping intervals into consolidated ranges"
topic: "arrays"
parameters:
  - name: "intervals"
    type: "array"
    default: [[1, 3], [2, 6], [8, 10], [15, 18]]
    description: "Array of [start, end] intervals"
exampleOutputs:
  - input: { "intervals": [[1, 3], [2, 6], [8, 10], [15, 18]] }
    output: "[[1,6],[8,10],[15,18]]"
---

```php
usort($intervals, fn($a, $b) => $a[0] - $b[0]);
$merged = [$intervals[0]];
for ($i = 1; $i < count($intervals); $i++) {
    $last = &$merged[count($merged) - 1];
    if ($intervals[$i][0] <= $last[1]) {
        $last[1] = max($last[1], $intervals[$i][1]);
    } else {
        $merged[] = $intervals[$i];
    }
}
return $merged;
```
