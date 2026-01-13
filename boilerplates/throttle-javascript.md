---
title: "Throttle"
description: "Create a throttled function that limits execution rate"
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
