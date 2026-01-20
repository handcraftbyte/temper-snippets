---
title: "Stream Response Body"
description: "Read response body as a stream for large files or real-time data."
topic: "http"
parameters: []
exampleOutputs:
  - input: {}
    output: '{"chunks": 3, "totalBytes": 1024}'
---

```javascript
const response = await fetch('https://httpbin.org/stream-bytes/1024?chunk_size=256');
const reader = response.body.getReader();

let totalBytes = 0;
let chunks = 0;

while (true) {
  const { done, value } = await reader.read();
  if (done) break;
  chunks++;
  totalBytes += value.length;
}

({ chunks, totalBytes });
```

## Use Cases

- **Large file downloads** - Process without loading entire file in memory
- **Server-sent events** - Real-time updates
- **Progress tracking** - Show download progress
- **Early termination** - Stop reading when you have enough data
