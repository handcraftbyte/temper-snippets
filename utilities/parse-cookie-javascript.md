---
title: "Parse Cookie String"
description: "Parse cookie string into an object"
topic: "objects"
parameters:
  - name: "cookieStr"
    type: "string"
    default: "name=John; age=30; theme=dark"
    description: "Cookie string"
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
