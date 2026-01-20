---
title: "Memoize"
description: "Cache function results to avoid redundant calculations and improve performance for expensive operations."
topic: "async"
exampleOutputs:
  - input: {}
    output: "55"
---

```javascript
const memoize = (fn) => {
  const cache = new Map();
  return (...args) => {
    const key = JSON.stringify(args);
    if (cache.has(key)) return cache.get(key);
    const result = fn(...args);
    cache.set(key, result);
    return result;
  };
};

const fib = memoize(n => n <= 1 ? n : fib(n - 1) + fib(n - 2));
return fib(10);
```
