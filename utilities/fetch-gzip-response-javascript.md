---
title: "Handle Gzip Compressed Response"
description: "Fetch gzip-compressed data (automatically decompressed by browser)"
topic: "http"
parameters: []
exampleOutputs:
  - input: {}
    output: '{"gzipped": true, "method": "GET"}'
---

```javascript
const response = await fetch('https://httpbin.org/gzip');
const data = await response.json();

({
  gzipped: data.gzipped,
  encoding: response.headers.get('content-encoding'),
  method: data.method
});
```

## Notes

- Browser automatically decompresses gzip/deflate/br responses
- Check `Content-Encoding` header to see compression used
- httpbin.org endpoints: `/gzip`, `/deflate`, `/brotli`
