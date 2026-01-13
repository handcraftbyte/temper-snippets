---
title: "Encode URL"
description: "Encode a string for use in a URL"
topic: "encoding"
parameters:
  - name: "str"
    type: "string"
    default: "Hello World! How are you?"
    description: "The string to encode"
exampleOutputs:
  - input: { "str": "Hello World! How are you?" }
    output: "Hello%20World%21%20How%20are%20you%3F"
---

```php
rawurlencode($str);
```
