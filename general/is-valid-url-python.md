---
title: "Validate URL"
description: "Check if a string is a valid URL."
topic: "validation"
relatedSlugs:
  - "is-valid-url-javascript"
  - "is-valid-url-ruby"
  - "is-valid-url-php"
  - "is-valid-url-bash"
parameters:
  - name: "url"
    type: "string"
    default: "https://example.com/path?query=1"
    description: "The URL to validate"
exampleOutputs:
  - input: { "url": "https://example.com/path?query=1" }
    output: "True"
  - input: { "url": "not-a-url" }
    output: "False"
  - input: { "url": "http://localhost:3000" }
    output: "True"
---

```python
from urllib.parse import urlparse
result = urlparse(url)
return bool(result.scheme and result.netloc)
```
