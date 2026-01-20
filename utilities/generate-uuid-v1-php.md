---
title: "Generate UUID v1"
description: "Generate a time-based UUID v1 using timestamp and random node ID."
topic: "generators"
parameters: []
exampleOutputs:
  - input: {}
    output: "6ba7b810-9dad-11d1-80b4-00c04fd430c8"
---

```php
$time = microtime(true) * 10000000 + 0x01b21dd213814000;
$timeLow = sprintf('%08x', $time & 0xffffffff);
$timeMid = sprintf('%04x', ($time >> 32) & 0xffff);
$timeHi = sprintf('%04x', (($time >> 48) & 0x0fff) | 0x1000);
$clockSeq = sprintf('%04x', mt_rand(0, 0x3fff) | 0x8000);
$node = sprintf('%012x', mt_rand(0, 0xffffffffffff));
return sprintf('%s-%s-%s-%s-%s', $timeLow, $timeMid, $timeHi, $clockSeq, $node);
```
