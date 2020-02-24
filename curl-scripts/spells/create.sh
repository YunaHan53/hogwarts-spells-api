#!/bin/bash

curl "http://localhost:4741/spells" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "spells": {
      "name": "'"${NAME}"'",
      "type": "'"${TYPE}"'",
      "description": "'"${DESCRIPTION}"'",
      "fatality": "'"${FATALITY}"'"
    }
  }'

echo
