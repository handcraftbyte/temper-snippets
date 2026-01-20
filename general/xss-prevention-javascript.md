---
title: "XSS Attack Prevention"
description: "Escape HTML entities to prevent Cross-Site Scripting attacks."
topic: "security"
parameters:
  - name: "userInput"
    type: "string"
    default: "<script>alert('XSS')</script>"
    description: "Untrusted user input (try a malicious payload)"
exampleOutputs:
  - input: { "userInput": "<script>alert('XSS')</script>" }
    output: "&lt;script&gt;alert('XSS')&lt;/script&gt;"
  - input: { "userInput": "<img src=x onerror=alert('XSS')>" }
    output: "&lt;img src=x onerror=alert('XSS')&gt;"
---

```javascript
// Escape HTML entities to prevent XSS
const escapeHtml = (str) => str
  .replace(/&/g, '&amp;')
  .replace(/</g, '&lt;')
  .replace(/>/g, '&gt;')
  .replace(/"/g, '&quot;')
  .replace(/'/g, '&#039;');

escapeHtml(userInput);
```

## What is XSS?

Cross-Site Scripting (XSS) occurs when untrusted data is included in a web page without proper escaping. An attacker can inject malicious scripts that execute in other users' browsers.

```html
<!-- If userInput is: <script>alert('XSS')</script> -->
<div>Welcome, <script>alert('XSS')</script>!</div>
<!-- The script executes! -->
```

## Why Escaping Works

| Character | Escaped | Why |
|-----------|---------|-----|
| `<` | `&lt;` | Prevents opening tags |
| `>` | `&gt;` | Prevents closing tags |
| `"` | `&quot;` | Prevents breaking out of attributes |
| `'` | `&#039;` | Prevents breaking out of attributes |
| `&` | `&amp;` | Prevents entity injection |

After escaping, the browser displays the characters literally instead of interpreting them as HTML:

```html
<div>Welcome, &lt;script&gt;alert('XSS')&lt;/script&gt;!</div>
<!-- Shows: Welcome, <script>alert('XSS')</script>! -->
<!-- No script executes! -->
```

## Alternative: Use textContent

When setting text (not HTML), use `textContent` instead of `innerHTML`:

```javascript
// SAFE: textContent automatically escapes
element.textContent = userInput;

// DANGEROUS: innerHTML interprets HTML
element.innerHTML = userInput;  // Never with untrusted input!
```

## Common XSS Payloads

| Payload | Attack Vector |
|---------|--------------|
| `<script>...</script>` | Direct script execution |
| `<img src=x onerror=...>` | Event handler injection |
| `<a href="javascript:...">` | JavaScript URL |
| `" onclick="..."` | Attribute injection |

## The Rule

**Never insert untrusted data into HTML without escaping. Use `textContent` for text, escape for HTML contexts.**
