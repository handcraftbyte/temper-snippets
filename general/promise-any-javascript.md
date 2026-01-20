---
title: "Promise.any"
description: "Return the result of the first promise that resolves successfully."
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
