#!/bin/bash

#curl "http://localhost:3000/sign-in" \
# curl --include --request POST http://localhost:4741/sign-in \
#   --header "Content-Type: application/json" \
#   --data '{
#     "credentials": {
#       "email": "an@example.email",
#       "password": "an example password"
#     }
#   }'

# EMAIL=wdi@gmail.com PASSWORD=abc scripts/sign-in-json.sh

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "wdi@gmail.com",
      "password": "abc"
    }
  }'

# data output from curl doesn't have a trailing newline
echo
