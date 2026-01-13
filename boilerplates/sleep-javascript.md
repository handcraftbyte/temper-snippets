---
title: "Sleep"
description: "Pause execution for specified milliseconds"
topic: "async"
exampleOutputs:
  - input: {}
    output: "slept 10ms"
---

```javascript
const sleep = (ms) => new Promise(resolve => setTimeout(resolve, ms));

await sleep(10);
return 'slept 10ms';
```
