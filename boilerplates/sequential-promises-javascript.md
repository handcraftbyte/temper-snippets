---
title: "Sequential Promises"
description: "Execute async operations sequentially"
topic: "async"
exampleOutputs:
  - input: {}
    output: "2,4,6"
---

```javascript
const sequential = async (arr, fn) => {
  const results = [];
  for (const item of arr) {
    results.push(await fn(item));
  }
  return results;
};

const results = await sequential([1,2,3], async x => x * 2);
return results.join(',');
```
