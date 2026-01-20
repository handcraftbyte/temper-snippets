---
title: "Throttle"
description: "Create a throttled function that limits the execution rate to at most once per specified time interval."
topic: "async"
exampleOutputs:
  - input: {}
    output: "throttled"
---

```javascript
const throttle = (fn, ms) => {
  let inThrottle;
  return (...args) => {
    if (!inThrottle) {
      fn(...args);
      inThrottle = true;
      setTimeout(() => inThrottle = false, ms);
    }
  };
};

const log = throttle(() => console.log('called'), 100);
log();
return 'throttled';
```
