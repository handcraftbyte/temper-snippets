---
title: "Get My IP Address"
description: "Get your public IP address using the ipify API."
topic: "http"
parameters: []
exampleOutputs:
  - input: {}
    output: '"203.0.113.42"'
---

```javascript
const response = await fetch('https://api.ipify.org?format=json');
const { ip } = await response.json();
```
