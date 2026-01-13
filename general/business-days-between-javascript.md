---
title: "Business Days Between"
description: "Calculate the number of business days (weekdays) between two dates. Excludes Saturdays and Sundays, useful for project planning and SLA calculations."
topic: "dates"
tags:
  - business-days
  - weekdays
  - scheduling
  - workdays
  - sla
parameters:
  - name: "startDate"
    type: "string"
    default: "2024-01-01"
    description: "Start date (YYYY-MM-DD)"
  - name: "endDate"
    type: "string"
    default: "2024-01-15"
    description: "End date (YYYY-MM-DD)"
exampleOutputs:
  - input: { "startDate": "2024-01-01", "endDate": "2024-01-15" }
    output: "10"
  - input: { "startDate": "2024-01-08", "endDate": "2024-01-12" }
    output: "5"
---

```javascript
let count = 0;
const start = new Date(startDate);
const end = new Date(endDate);
for (let d = new Date(start); d <= end; d.setDate(d.getDate() + 1)) {
  const day = d.getDay();
  if (day !== 0 && day !== 6) count++;
}
return count;
```

## How It Works

JavaScript's `getDay()` returns:
- `0` = Sunday
- `1-5` = Monday-Friday (business days)
- `6` = Saturday

The loop iterates through each day and counts only weekdays.

## Example Calculation

```
January 2024
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6    ← Jan 1-5: 5 business days
 7  8  9 10 11 12 13    ← Jan 8-12: 5 business days
14 15 ...               ← Jan 15: 1 business day (Mon)

Jan 1 to Jan 15 = 10 business days
```

## Common Use Cases

| Use Case | Example |
|----------|---------|
| **SLA calculations** | "Respond within 3 business days" |
| **Project planning** | Estimate delivery dates |
| **Shipping estimates** | "Arrives in 5-7 business days" |
| **Payroll** | Count working days in pay period |
| **Lead time** | Manufacturing or procurement |

## What This Doesn't Include

### Holidays

This snippet only excludes weekends. For accurate business day calculations, you'll need to add holiday handling:

```javascript
const holidays = [
  '2024-01-01',  // New Year
  '2024-12-25',  // Christmas
  // ...
];

// In the loop:
const dateStr = d.toISOString().split('T')[0];
if (day !== 0 && day !== 6 && !holidays.includes(dateStr)) {
  count++;
}
```

### Regional Differences

- **Middle East**: Friday-Saturday weekend
- **Some countries**: Saturday is a half-day
- **Varies by industry**: Banks, government, retail have different schedules

## Performance Note

For large date ranges, consider an O(1) formula-based approach instead of looping:

```javascript
// Formula approach (faster for large ranges):
// Calculate full weeks × 5 + remaining weekdays
```

This loop approach is simple and correct for most use cases (ranges under a few years).
