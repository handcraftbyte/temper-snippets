---
title: "Fetch with Timeout"
description: "Make HTTP requests with a configurable timeout using AbortController"
topic: "http"
parameters:
  - name: url
    type: string
    default: "https://httpbin.org/delay/1"
    description: URL to fetch
  - name: timeoutMs
    type: number
    default: 3000
    description: Timeout in milliseconds
exampleOutputs:
  - input: { "url": "https://httpbin.org/delay/1", "timeoutMs": 3000 }
    output: '{"args":{},"data":"","origin":"...","url":"..."}'
---

```javascript
const controller = new AbortController();
const timeoutId = setTimeout(() => controller.abort(), timeoutMs);

const response = await fetch(url, { signal: controller.signal })
  .finally(() => clearTimeout(timeoutId));

const data = await response.json();
```

## How It Works

1. **AbortController** - Creates a controller that can abort the fetch request
2. **setTimeout** - Triggers `abort()` after the specified timeout
3. **signal** - Pass the controller's signal to fetch to enable cancellation
4. **finally** - Clear the timeout if fetch completes before timeout

## Error Handling

```javascript
try {
  const controller = new AbortController();
  const timeoutId = setTimeout(() => controller.abort(), timeoutMs);

  const response = await fetch(url, { signal: controller.signal })
    .finally(() => clearTimeout(timeoutId));

  return await response.json();
} catch (err) {
  if (err.name === 'AbortError') {
    throw new Error(`Request timed out after ${timeoutMs}ms`);
  }
  throw err;
}
```

## Reusable Function

```javascript
async function fetchWithTimeout(url, options = {}, timeout = 5000) {
  const controller = new AbortController();
  const timeoutId = setTimeout(() => controller.abort(), timeout);

  const response = await fetch(url, {
    ...options,
    signal: controller.signal
  }).finally(() => clearTimeout(timeoutId));

  return response;
}
```

## Test URLs

- `https://httpbin.org/delay/1` - Responds after 1 second
- `https://httpbin.org/delay/5` - Responds after 5 seconds (will timeout with default 3s)
