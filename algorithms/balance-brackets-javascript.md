---
title: "Check Balanced Brackets"
description: "Check if brackets in a string are properly balanced and nested using a stack-based approach."
topic: "validation"
parameters:
  - name: "str"
    type: "string"
    default: "{[()]}"
    description: "String with brackets"
exampleOutputs:
  - input: { "str": "{[()]}" }
    output: "true"
  - input: { "str": "{[(])}" }
    output: "false"
---

```javascript
const pairs = { ')': '(', ']': '[', '}': '{' };
const stack = [];
let balanced = true;
for (const c of str) {
  if ('([{'.includes(c)) stack.push(c);
  else if (')]}'.includes(c)) {
    if (stack.pop() !== pairs[c]) { balanced = false; break; }
  }
}
return balanced && stack.length === 0;
```
