---
title: "Scroll to Element"
description: "Smooth scroll to a specific element on the page using its CSS selector."
topic: "browser"
parameters:
  - name: "selector"
    type: "string"
    default: "#section"
    description: "CSS selector."
exampleOutputs:
  - input: { "selector": "#section" }
    output: "Scroll function created"
---

```javascript
const scrollToElement = sel => {
  document.querySelector(sel)?.scrollIntoView({ behavior: 'smooth' });
};
return "Scroll function created";
```
