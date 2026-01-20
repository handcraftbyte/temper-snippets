---
title: "Count Characters"
description: "Count the number of characters in a string, with option to exclude spaces."
topic: "strings"
relatedSlugs:
  - "count-characters-javascript"
  - "count-characters-python"
  - "count-characters-ruby"
  - "count-characters-bash"
parameters:
  - name: "str"
    type: "string"
    default: "Hello World"
    description: "The string to count characters in"
  - name: "includeSpaces"
    type: "boolean"
    default: true
    description: "Whether to include spaces in the count"
exampleOutputs:
  - input: { "str": "Hello World", "includeSpaces": true }
    output: "11"
  - input: { "str": "Hello World", "includeSpaces": false }
    output: "10"
---

```php
$includeSpaces ? strlen($str) : strlen(str_replace(' ', '', $str));
```
