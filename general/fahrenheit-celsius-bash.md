---
title: "Fahrenheit to Celsius"
description: "Convert temperature from Fahrenheit to Celsius."
topic: "math"
relatedSlugs:
  - "fahrenheit-celsius-javascript"
  - "fahrenheit-celsius-python"
  - "fahrenheit-celsius-ruby"
  - "fahrenheit-celsius-php"
parameters:
  - name: "fahrenheit"
    type: "number"
    default: 77
    description: "Temperature in Fahrenheit"
exampleOutputs:
  - input: { "fahrenheit": 77 }
    output: "25"
  - input: { "fahrenheit": 32 }
    output: "0"
  - input: { "fahrenheit": 212 }
    output: "100"
---

```bash
echo $(((fahrenheit - 32) * 5 / 9))
```
