---
title: "Fetch JSON from API"
description: "Make a GET request and parse the JSON response."
topic: "http"
parameters: []
exampleOutputs:
  - input: {}
    output: '{"origin": "203.0.113.42"}'
---

```javascript
const response = await fetch('https://httpbin.org/get');
await response.json();
```

## With Error Handling

```javascript
const response = await fetch('https://httpbin.org/get');
if (!response.ok) throw new Error(`HTTP ${response.status}`);
await response.json();
```
