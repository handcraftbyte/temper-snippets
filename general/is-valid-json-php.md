---
title: "Validate JSON"
description: "Check if a string is valid JSON"
topic: "validation"
relatedSlugs:
  - "is-valid-json-javascript"
  - "is-valid-json-python"
  - "is-valid-json-ruby"
  - "is-valid-json-bash"
parameters:
  - name: "str"
    type: "string"
    default: "{\"name\": \"John\", \"age\": 30}"
    description: "The string to validate as JSON"
exampleOutputs:
  - input: { "str": "{\"name\": \"John\", \"age\": 30}" }
    output: "true"
  - input: { "str": "{invalid json}" }
    output: "false"
  - input: { "str": "[1, 2, 3]" }
    output: "true"
---

```php
json_decode($str);
return json_last_error() === JSON_ERROR_NONE;
```
