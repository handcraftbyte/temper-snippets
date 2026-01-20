---
title: "Scroll to Top"
description: "Smooth scroll to the top of the page with optional animation control."
topic: "browser"
parameters:
  - name: "smooth"
    type: "boolean"
    default: true
    description: "Use smooth scrolling."
exampleOutputs:
  - input: { "smooth": true }
    output: "Scroll function created"
---

```javascript
const scrollToTop = (useSmooth = smooth) => {
  window.scrollTo({ top: 0, behavior: useSmooth ? 'smooth' : 'auto' });
};
return "Scroll function created";
```
