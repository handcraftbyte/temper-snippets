---
title: "Parse Cookie String"
description: "Parse a cookie string into a JavaScript object with key-value pairs."
topic: "objects"
parameters:
  - name: "cookieStr"
    type: "string"
    default: "name=John; age=30; theme=dark"
    description: "Cookie string."
exampleOutputs:
  - input: { "cookieStr": "name=John; age=30; theme=dark" }
    output: "{\"name\":\"John\",\"age\":\"30\",\"theme\":\"dark\"}"
---

```javascript
return Object.fromEntries(
  cookieStr.split('; ').map(pair => {
    const [key, ...val] = pair.split('=');
    return [key, val.join('=')];
  })
);
```
