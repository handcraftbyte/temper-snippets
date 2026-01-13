---
title: "Get Cookie"
description: "Get a cookie value by name"
topic: "browser"
parameters:
  - name: "name"
    type: "string"
    default: "myCookie"
    description: "Cookie name"
exampleOutputs:
  - input: { "name": "myCookie" }
    output: "cookieValue"
---

```javascript
document.cookie.split('; ').find(row => row.startsWith(`${name}=`))?.split('=')[1] || null;
```
