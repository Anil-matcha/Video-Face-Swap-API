#!/usr/bin/env bash
set -euo pipefail
: "${MUAPI_API_KEY:?Set MUAPI_API_KEY first}"
curl --fail-with-body -sS -X POST https://api.muapi.ai/api/v1/ai-video-face-swap \
  -H "Content-Type: application/json" \
  -H "x-api-key: $MUAPI_API_KEY" \
  -d '{"image_url": "https://example.com/replace-with-your-file", "video_url": "https://example.com/replace-with-your-file"}'
