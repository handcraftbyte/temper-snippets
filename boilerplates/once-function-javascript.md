---
title: "Once"
description: "Create a function that can only be called once"
topic: "async"
exampleOutputs:
  - input: {}
    output: "1,1,1"
---

```javascript
const once = (fn) => {
  let called = false, result;
  return (...args) => {
    if (!called) {
      called = true;
      result = fn(...args);
    }
    return result;
  };
};

let count = 0;
const increment = once(() => ++count);
return [increment(), increment(), increment()].join(',');
```
