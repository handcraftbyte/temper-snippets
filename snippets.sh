#!/bin/bash
# Helper script for managing the snippets repository
# Usage: ./snippets.sh [command]

CONTENT_DIR="$(cd "$(dirname "$0")" && pwd)"
CATEGORIES="general utilities algorithms boilerplates"

case "${1:-help}" in
  topics|t)
    # Show all topics with which categories they appear in
    echo "Topics"
    echo "======"
    for cat in $CATEGORIES; do
      [ -d "$CONTENT_DIR/$cat" ] || continue
      grep -h "^topic:" "$CONTENT_DIR/$cat"/*.md 2>/dev/null \
        | sed 's/topic: *"\{0,1\}\([^"]*\)"\{0,1\}/\1/'
    done | sort -u | while read topic; do
      cats=""
      for cat in $CATEGORIES; do
        if grep -ql "^topic: *\"*$topic\"*" "$CONTENT_DIR/$cat"/*.md 2>/dev/null; then
          cats="$cats $cat"
        fi
      done
      printf "  %-24s %s\n" "$topic" "$cats"
    done
    ;;

  types|y)
    # Show all topics grouped by category/type
    echo "Topics by Type"
    echo "=============="
    for cat in $CATEGORIES; do
      [ -d "$CONTENT_DIR/$cat" ] || continue
      echo ""
      echo "[$cat]"
      grep -h "^topic:" "$CONTENT_DIR/$cat"/*.md 2>/dev/null \
        | sed 's/topic: *"\{0,1\}\([^"]*\)"\{0,1\}/\1/' \
        | sort | uniq -c | sort -rn \
        | while read count topic; do
            printf "  %-20s %4d\n" "$topic" "$count"
          done
    done
    ;;

  count|c)
    # Quick count by category
    total=0
    for cat in $CATEGORIES; do
      count=$(find "$CONTENT_DIR/$cat" -name "*.md" 2>/dev/null | wc -l | tr -d ' ')
      printf "%-12s %4d\n" "$cat" "$count"
      total=$((total + count))
    done
    echo "------------------------"
    printf "%-12s %4d\n" "total" "$total"
    ;;

  list|l)
    # List snippets, optionally filtered
    cat="${2:-}"
    topic="${3:-}"

    if [ -z "$cat" ]; then
      echo "Usage: ./snippets.sh list <category> [topic]"
      echo "Categories: $CATEGORIES"
      exit 1
    fi

    if [ -n "$topic" ]; then
      grep -l "^topic: *\"$topic\"" "$CONTENT_DIR/$cat"/*.md 2>/dev/null | xargs -I{} basename {} .md
    else
      ls "$CONTENT_DIR/$cat"/*.md 2>/dev/null | xargs -I{} basename {} .md
    fi
    ;;

  check|v)
    # Check for missing topic fields
    echo "Checking for missing topic fields..."
    missing=0
    for cat in $CATEGORIES; do
      for file in "$CONTENT_DIR/$cat"/*.md; do
        [ -f "$file" ] || continue
        if ! grep -q "^topic:" "$file"; then
          echo "  Missing topic: $cat/$(basename "$file")"
          missing=$((missing + 1))
        fi
      done
    done
    if [ $missing -eq 0 ]; then
      echo "All snippets have topic field!"
    else
      echo ""
      echo "Found $missing snippets missing topic"
      exit 1
    fi
    ;;

  help|h|*)
    echo "Snippets Repository Helper"
    echo ""
    echo "Usage: ./snippets.sh <command>"
    echo ""
    echo "Commands:"
    echo "  topics, t              List topics with their types"
    echo "  types, y               List topics grouped by type (with counts)"
    echo "  count, c               Count snippets by type"
    echo "  list, l <type> [topic] List snippets in type, optionally by topic"
    echo "  check, v               Check for missing topic fields"
    echo "  help, h                Show this help"
    echo ""
    echo "Types: $CATEGORIES"
    echo ""
    echo "Example:"
    echo "  ./snippets.sh topics           # See topics and where they exist"
    echo "  ./snippets.sh types            # See topics grouped by type"
    echo "  ./snippets.sh list general     # List all general snippets"
    ;;
esac
