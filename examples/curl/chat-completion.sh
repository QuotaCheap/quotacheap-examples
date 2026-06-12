#!/usr/bin/env bash
set -euo pipefail

: "${QUOTACHEAP_API_KEY:?Set QUOTACHEAP_API_KEY first}"
QUOTACHEAP_BASE_URL="${QUOTACHEAP_BASE_URL:-https://api.quota.cheap/v1}"
QUOTACHEAP_MODEL="${QUOTACHEAP_MODEL:-gpt-5.4-mini}"

curl "$QUOTACHEAP_BASE_URL/chat/completions" \
  -H "Authorization: Bearer $QUOTACHEAP_API_KEY" \
  -H "Content-Type: application/json" \
  -d "{
    "model": "$QUOTACHEAP_MODEL",
    "messages": [
      { "role": "user", "content": "Say hello from QuotaCheap." }
    ]
  }"
