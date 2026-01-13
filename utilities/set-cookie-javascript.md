---
title: "Set Cookie"
description: "Set a browser cookie with optional expiration"
topic: "browser"
parameters:
  - name: "name"
    type: "string"
    default: "myCookie"
    description: "Cookie name"
  - name: "value"
    type: "string"
    default: "myValue"
    description: "Cookie value"
  - name: "days"
    type: "number"
    default: 7
    description: "Days until expiration"
exampleOutputs:
  - input: { "name": "myCookie", "value": "myValue", "days": 7 }
    output: "Cookie set"
---

```javascript
const expires = new Date(Date.now() + days * 864e5).toUTCString();
document.cookie = `${name}=${value}; expires=${expires}; path=/`;
return "Cookie set";
```
