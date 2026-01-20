---
title: "Generate UUID v6"
description: "Generate a reordered time-based UUID v6 with improved sortability for databases."
topic: "generators"
parameters: []
exampleOutputs:
  - input: {}
    output: "1ed9dad8-6ba7-6b10-80b4-00c04fd430c8"
---

```php
$timeGreg = (int)(microtime(true) * 10000000) + 0x01b21dd213814000;
$timeHigh = ($timeGreg >> 28) & 0xffffffff;
$timeMid = ($timeGreg >> 12) & 0xffff;
$timeLow = ($timeGreg & 0xfff) | 0x6000;
$clockSeq = mt_rand(0, 0x3fff) | 0x8000;
$node = mt_rand(0, 0xffffff) << 24 | mt_rand(0, 0xffffff);
return sprintf('%08x-%04x-%04x-%04x-%012x', $timeHigh, $timeMid, $timeLow, $clockSeq, $node);
```
