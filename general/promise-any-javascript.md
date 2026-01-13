---
title: "Promise.any"
description: "Return first successful promise result"
topic: "async"
exampleOutputs:
  - input: {}
    output: "first"
---

```javascript
const promises = [
  new Promise(r => setTimeout(() => r('slow'), 100)),
  Promise.resolve('first'),
  Promise.reject(new Error('fail'))
];

return await Promise.any(promises);
```
