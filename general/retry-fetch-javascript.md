---
title: Retry Fetch with Backoff
description: "Automatically retry failed HTTP requests with exponential backoff."
topic: "http"
tags:
  - fetch
  - retry
  - backoff
  - resilience
parameters:
  - name: url
    type: string
    default: "https://httpbin.org/status/200,500"
    description: URL to fetch (this one randomly returns 200 or 500)
  - name: maxRetries
    type: number
    default: 3
    description: Maximum retry attempts
---

```javascript
async function retryFetch(url, retries, delay = 1000) {
  for (let i = 0; i <= retries; i++) {
    try {
      const response = await fetch(url);
      if (!response.ok) throw new Error(`HTTP ${response.status}`);
      return response;
    } catch (err) {
      if (i === retries) throw err;
      console.log(`Attempt ${i + 1} failed, retrying in ${delay}ms...`);
      await new Promise(r => setTimeout(r, delay));
      delay *= 2; // Exponential backoff
    }
  }
}

const response = await retryFetch(url, maxRetries);
return { status: response.status, ok: response.ok };
```

## How It Works

1. **Loop** - Try up to `maxRetries + 1` times (initial + retries)
2. **Check response.ok** - Treat non-2xx status as failure
3. **Exponential backoff** - Double the delay after each failure (1s → 2s → 4s)
4. **Rethrow on final failure** - If all retries exhausted, throw the last error

## Advanced Version

```javascript
async function retryFetch(url, options = {}) {
  const {
    maxRetries = 3,
    initialDelay = 1000,
    maxDelay = 30000,
    retryOn = [408, 429, 500, 502, 503, 504],
    ...fetchOptions
  } = options;

  let delay = initialDelay;

  for (let i = 0; i <= maxRetries; i++) {
    try {
      const response = await fetch(url, fetchOptions);

      if (!response.ok && retryOn.includes(response.status)) {
        throw new Error(`HTTP ${response.status}`);
      }

      return response;
    } catch (err) {
      if (i === maxRetries) throw err;

      await new Promise(r => setTimeout(r, delay));
      delay = Math.min(delay * 2, maxDelay);
    }
  }
}
```

## Test URLs

- `https://httpbin.org/status/200,500` - Randomly succeeds or fails (great for testing retries)
- `https://httpbin.org/status/200,200,500` - 66% success rate
- `https://httpbin.org/status/200` - Always succeeds
- `https://httpbin.org/status/500` - Always fails
