#!/bin/bash

#curl "http://localhost:3000/change-password/${ID}" \
# curl "http://httpbin.org/patch?id=${ID}" \
#   --include \
#   --request PATCH \
#   --data-urlencode ""

#ID=7 EMAIL=lm01@gmail.com OLDPW=eee NEWPW=fff TOKEN=BAhJIiU2YWYxNTU4NTVmOWUzNWY2ZDVkZDRkMzc5MTA4NjBmZgY6BkVG--ac671b2bc57b21524f0e48be56dd0c387f5b0258 scripts/change-password.sh
  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/change-password/$ID"
  curl --include --request PATCH "${API}${URL_PATH}" \
    --header "Authorization: Token token=$TOKEN" \
    --header "Content-Type: application/json" \
    --data '{
      "passwords": {
        "old": "'"${OLDPW}"'",
        "new": "'"${NEWPW}"'"
      }
    }'

# data output from curl doesn't have a trailing newline
echo
