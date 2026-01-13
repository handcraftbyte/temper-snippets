---
title: "Validate URL"
description: "Check if a string is a valid URL"
topic: "validation"
relatedSlugs:
  - "is-valid-url-javascript"
  - "is-valid-url-python"
  - "is-valid-url-php"
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

```ruby
require 'uri'
return !!(url =~ URI::DEFAULT_PARSER.make_regexp(['http', 'https']))
```
