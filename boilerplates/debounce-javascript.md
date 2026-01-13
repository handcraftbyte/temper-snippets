---
title: "Debounce"
description: "Create a debounced function that delays execution"
topic: "async"
exampleOutputs:
  - input: {}
    output: "debounced"
---

```javascript
const debounce = (fn, ms) => {
  let timer;
  return (...args) => {
    clearTimeout(timer);
    timer = setTimeout(() => fn(...args), ms);
  };
};

const log = debounce(() => console.log('called'), 100);
log();
return 'debounced';
```
