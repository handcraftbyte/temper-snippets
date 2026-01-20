---
title: "Format Date"
description: "Format a date string into a human-readable format using Intl.DateTimeFormat."
topic: "dates"
tags: ["date", "format", "intl", "locale", "time"]
relatedSlugs: []
parameters:
  - name: "dateString"
    type: "string"
    default: "2024-01-15T10:30:00Z"
    description: "ISO date string to format."
  - name: "locale"
    type: "string"
    default: "en-US"
    description: "Locale for formatting (e.g., en-US, de-DE, ja-JP)."
exampleOutputs:
  - input: { "dateString": "2024-01-15T10:30:00Z", "locale": "en-US" }
    output: "January 15, 2024 at 10:30 AM"
  - input: { "dateString": "2024-12-25T18:00:00Z", "locale": "de-DE" }
    output: "25. Dezember 2024 um 18:00"
  - input: { "dateString": "2024-03-20T09:15:00Z", "locale": "ja-JP" }
    output: "2024年3月20日 9:15"
---

```javascript
new Intl.DateTimeFormat(locale, {
  year: 'numeric',
  month: 'long',
  day: 'numeric',
  hour: 'numeric',
  minute: 'numeric'
}).format(new Date(dateString));
```
