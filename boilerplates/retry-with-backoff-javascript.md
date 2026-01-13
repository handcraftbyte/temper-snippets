---
title: "Retry with Backoff"
description: "Retry an async function with exponential backoff"
topic: "async"
exampleOutputs:
  - input: {}
    output: "success after 3 attempts"
---

```javascript
const retry = async (fn, retries = 3, delay = 10) => {
  try {
    return await fn();
  } catch (e) {
    if (retries === 0) throw e;
    await new Promise(r => setTimeout(r, delay));
    return retry(fn, retries - 1, delay * 2);
  }
};

let attempts = 0;
const result = await retry(async () => {
  attempts++;
  if (attempts < 3) throw new Error('fail');
  return 'success';
});
return `${result} after ${attempts} attempts`;
```
