---
title: "Common Cron Schedules"
description: "Generate cron expressions for common scheduling patterns like daily, weekly, or hourly."
topic: "system"
parameters:
  - name: "schedule"
    type: "string"
    default: "daily"
    description: "Schedule type: hourly, daily, weekly, monthly, weekdays."
  - name: "hour"
    type: "number"
    default: 9
    description: "Hour to run (0-23)."
  - name: "minute"
    type: "number"
    default: 0
    description: "Minute to run (0-59)."
exampleOutputs:
  - input: { "schedule": "daily", "hour": 9, "minute": 30 }
    output: "30 9 * * *"
  - input: { "schedule": "weekdays", "hour": 8, "minute": 0 }
    output: "0 8 * * 1-5"
---

```bash
case "$schedule" in
  hourly)   echo "$minute * * * *" ;;
  daily)    echo "$minute $hour * * *" ;;
  weekly)   echo "$minute $hour * * 0" ;;
  monthly)  echo "$minute $hour 1 * *" ;;
  weekdays) echo "$minute $hour * * 1-5" ;;
  *)        echo "Unknown schedule: $schedule" ;;
esac
```
