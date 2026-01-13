---
title: "Delayed Response (Test Timeouts)"
description: "Request a delayed response to test timeout handling"
topic: "http"
parameters:
  - name: "delaySeconds"
    type: "number"
    default: 2
    description: "Delay in seconds (max 10)"
exampleOutputs:
  - input: { "delaySeconds": 2 }
    output: '{"delayed": true, "duration": 2}'
---

```javascript
const controller = new AbortController();
const timeoutId = setTimeout(() => controller.abort(), 5000);

const start = Date.now();
const response = await fetch(`https://httpbin.org/delay/${delaySeconds}`, {
  signal: controller.signal
});
clearTimeout(timeoutId);

const duration = Date.now() - start;
({ duration: Math.round(duration / 1000), data: await response.json() });
```

## Timeout Pattern

```javascript
// Abort after 3 seconds
const controller = new AbortController();
setTimeout(() => controller.abort(), 3000);

try {
  const response = await fetch(url, { signal: controller.signal });
} catch (err) {
  if (err.name === 'AbortError') {
    console.log('Request timed out');
  }
}
```
