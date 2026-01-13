---
title: "Celsius to Fahrenheit"
description: "Convert temperature from Celsius to Fahrenheit"
topic: "math"
relatedSlugs:
  - "celsius-fahrenheit-javascript"
  - "celsius-fahrenheit-python"
  - "celsius-fahrenheit-ruby"
  - "celsius-fahrenheit-php"
parameters:
  - name: "celsius"
    type: "number"
    default: 25
    description: "Temperature in Celsius"
exampleOutputs:
  - input: { "celsius": 25 }
    output: "77"
  - input: { "celsius": 0 }
    output: "32"
  - input: { "celsius": 100 }
    output: "212"
---

```bash
echo $((celsius * 9 / 5 + 32))
```
