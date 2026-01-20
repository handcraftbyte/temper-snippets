---
title: "Parse URL"
description: "Parse a URL into its components including protocol, host, path, query string, and hash."
topic: "http"
parameters:
  - name: "url"
    type: "string"
    default: "https://example.com:8080/path/to/page?query=1&foo=bar#section"
    description: "URL to parse."
exampleOutputs:
  - input: { "url": "https://example.com:8080/path/to/page?query=1#section" }
    output: "{protocol, host, pathname, search, hash}"
---

```javascript
const u = new URL(url);
return { protocol: u.protocol, host: u.host, pathname: u.pathname, search: u.search, hash: u.hash, origin: u.origin };
```
