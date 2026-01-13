---
title: "Mask Credit Card"
description: "Mask credit card number showing only last 4 digits"
topic: "formatting"
parameters:
  - name: "cardNumber"
    type: "string"
    default: "4532015112830366"
    description: "Credit card number"
exampleOutputs:
  - input: { "cardNumber": "4532015112830366" }
    output: "**** **** **** 0366"
---

```php
'**** **** **** ' . substr($cardNumber, -4);
```
