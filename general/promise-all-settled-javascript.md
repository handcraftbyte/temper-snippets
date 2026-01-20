---
title: "Promise.allSettled"
description: "Wait for all promises to settle, whether they resolve or reject."
topic: "async"
exampleOutputs:
  - input: {}
    output: "fulfilled: 2, rejected: 1"
---

```javascript
const promises = [
  Promise.resolve(1),
  Promise.resolve(2),
  Promise.reject(new Error('fail'))
];

const results = await Promise.allSettled(promises);

const fulfilled = results
  .filter(r => r.status === 'fulfilled')
  .map(r => r.value);

const rejected = results
  .filter(r => r.status === 'rejected')
  .map(r => r.reason);

return `fulfilled: ${fulfilled.length}, rejected: ${rejected.length}`;
```
