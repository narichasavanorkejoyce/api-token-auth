#!/bin/bash

# curl "http://localhost:3000/sign-out/$ID" \
# curl "http://httpbin.org/delete?id=$ID" \
#   --include \
#   --request DELETE

# ID=7 TOKEN=token goes here scripts/sign-out.sh
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-out/$ID"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

# data output from curl doesn't have a trailing newline
echo
