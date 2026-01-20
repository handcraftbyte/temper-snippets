---
title: "Validate URL"
description: "Check if a string is a valid URL."
topic: "validation"
relatedSlugs:
  - "is-valid-url-javascript"
  - "is-valid-url-python"
  - "is-valid-url-ruby"
  - "is-valid-url-bash"
parameters:
  - name: "url"
    type: "string"
    default: "https://example.com/path?query=1"
    description: "The URL to validate"
exampleOutputs:
  - input: { "url": "https://example.com/path?query=1" }
    output: "true"
  - input: { "url": "not-a-url" }
    output: "false"
  - input: { "url": "http://localhost:3000" }
    output: "true"
---

```php
filter_var($url, FILTER_VALIDATE_URL) ? 'true' : 'false';
```
