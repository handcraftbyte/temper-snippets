---
title: "Prettify HTML"
description: "Format HTML with indentation for improved readability and debugging."
topic: "html"
parameters:
  - name: "html"
    type: "string"
    default: "<html><head><title>Test</title></head><body><div><p>Hello</p></div></body></html>"
    description: "HTML string to format."
  - name: "indent"
    type: "number"
    default: 2
    description: "Number of spaces for indentation."
exampleOutputs:
  - input: { "html": "<div><p>Hello</p></div>", "indent": 2 }
    output: "<div>\n  <p>\n    Hello\n  </p>\n</div>"
---

```php
function formatNode($node, $level, $indent) {
    $pad = str_repeat(' ', $indent * $level);
    $result = '';
    foreach ($node->childNodes as $child) {
        if ($child->nodeType === XML_TEXT_NODE) {
            $text = trim($child->textContent);
            if ($text !== '') $result .= $pad . $text . "\n";
        } elseif ($child->nodeType === XML_ELEMENT_NODE) {
            $tag = $child->nodeName;
            $attrs = '';
            foreach ($child->attributes as $attr) {
                $attrs .= " {$attr->name}=\"{$attr->value}\"";
            }
            if ($child->childNodes->length === 0) {
                $result .= $pad . "<{$tag}{$attrs}></{$tag}>\n";
            } else {
                $result .= $pad . "<{$tag}{$attrs}>\n";
                $result .= formatNode($child, $level + 1, $indent);
                $result .= $pad . "</{$tag}>\n";
            }
        }
    }
    return $result;
}
$dom = new DOMDocument();
@$dom->loadHTML($html, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
$isFullDoc = preg_match('/<html[\s>]/i', $html);
$root = $isFullDoc ? $dom->documentElement : $dom->getElementsByTagName('body')->item(0);
return trim(formatNode($root, 0, $indent));
```
