---
title: "Explain Cron Expression"
description: "Break down a cron expression into human-readable field descriptions."
topic: "system"
parameters:
  - name: "expr"
    type: "string"
    default: "30 9 * * 1-5"
    description: "Cron expression (5 fields)."
exampleOutputs:
  - input: { "expr": "0 0 * * *" }
    output: "minute: 0\nhour: 0\nday: every day\nmonth: every month\nweekday: every day"
---

```bash
read -r min hour dom mon dow <<< "$expr"

explain_field() {
  local val="$1" name="$2" every="$3"
  if [[ "$val" == "*" ]]; then
    echo "$name: $every"
  elif [[ "$val" == *"/"* ]]; then
    echo "$name: every ${val#*/} ${name}s"
  elif [[ "$val" == *"-"* ]]; then
    echo "$name: ${val/-/ through }"
  elif [[ "$val" == *","* ]]; then
    echo "$name: ${val//,/, }"
  else
    echo "$name: $val"
  fi
}

explain_field "$min" "minute" "every minute"
explain_field "$hour" "hour" "every hour"
explain_field "$dom" "day" "every day"
explain_field "$mon" "month" "every month"
explain_field "$dow" "weekday" "every day"
```
