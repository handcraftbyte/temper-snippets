---
title: "Timeout Promise"
description: "Add a timeout to any promise"
topic: "async"
exampleOutputs:
  - input: {}
    output: "completed"
---

```javascript
const withTimeout = (promise, ms) => Promise.race([
  promise,
  new Promise((_, reject) =>
    setTimeout(() => reject(new Error('Timeout')), ms)
  )
]);

const fast = new Promise(r => setTimeout(() => r('completed'), 10));
return await withTimeout(fast, 1000);
```
