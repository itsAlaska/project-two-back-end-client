#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-in"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "user_name": "'"${USERNAME}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'

echo
