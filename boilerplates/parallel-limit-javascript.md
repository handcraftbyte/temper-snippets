---
title: "Parallel with Limit"
description: "Run promises in parallel with a concurrency limit to control resource usage and prevent overwhelming external services."
topic: "async"
exampleOutputs:
  - input: {}
    output: "2,4,6,8,10"
---

```javascript
const parallelLimit = async (arr, fn, concurrency) => {
  const results = [];
  const executing = new Set();
  for (const item of arr) {
    const p = Promise.resolve(fn(item)).then(r => {
      executing.delete(p);
      return r;
    });
    executing.add(p);
    results.push(p);
    if (executing.size >= concurrency) await Promise.race(executing);
  }
  return Promise.all(results);
};

const results = await parallelLimit([1,2,3,4,5], x => x * 2, 2);
return results.join(',');
```
