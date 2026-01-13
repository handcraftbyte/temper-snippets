---
title: "XSS Attack Prevention"
description: "Escape HTML entities to prevent Cross-Site Scripting attacks"
topic: "security"
parameters:
  - name: "user_input"
    type: "string"
    default: "<script>alert('XSS')</script>"
    description: "Untrusted user input (try a malicious payload)"
exampleOutputs:
  - input: { "user_input": "<script>alert('XSS')</script>" }
    output: "&lt;script&gt;alert(&#39;XSS&#39;)&lt;/script&gt;"
  - input: { "user_input": "<img src=x onerror=alert('XSS')>" }
    output: "&lt;img src=x onerror=alert(&#39;XSS&#39;)&gt;"
---

```ruby
require 'cgi'

# Escape HTML entities to prevent XSS
safe_output = CGI.escapeHTML(user_input)
return safe_output
```

## What is XSS?

Cross-Site Scripting (XSS) occurs when untrusted data is included in a web page without proper escaping. An attacker can inject malicious scripts that execute in other users' browsers.

```ruby
# DANGEROUS: Directly embedding user input in HTML
html = "<div>Welcome, #{user_input}!</div>"
# If user_input is "<script>alert('XSS')</script>", the script executes!
```

## Why Escaping Works

The `CGI.escapeHTML` method converts dangerous characters to HTML entities:

| Character | Escaped | Why |
|-----------|---------|-----|
| `<` | `&lt;` | Prevents opening tags |
| `>` | `&gt;` | Prevents closing tags |
| `"` | `&quot;` | Prevents breaking out of attributes |
| `'` | `&#39;` | Prevents breaking out of attributes |
| `&` | `&amp;` | Prevents entity injection |

```ruby
# SAFE: Escaped output
safe_html = "<div>Welcome, #{CGI.escapeHTML(user_input)}!</div>"
# Renders as text, not executable HTML
```

## In Rails

Rails auto-escapes in ERB templates by default:

```erb
<!-- Auto-escaped (safe) -->
<div>Welcome, <%= user_input %></div>

<!-- Raw output (dangerous!) - only if you trust the input -->
<div>Welcome, <%= raw user_input %></div>
<div>Welcome, <%== user_input %></div>
```

## The Rule

**Always use `CGI.escapeHTML` when embedding untrusted data in HTML. In Rails, trust the auto-escaping and avoid `raw` or `html_safe` with untrusted data.**
