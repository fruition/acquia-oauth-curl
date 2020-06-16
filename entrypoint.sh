#!/usr/bin/env sh

if [ -z "$ACQUIA_API_KEY" ] || [ -z "$ACQUIA_API_SECRET" ]; then
  echo "ACQUIA_API_KEY and ACQUIA_API_SECRET environment variables are both required."
  exit 1
fi

TOKEN=$(curl https://accounts.acquia.com/api/auth/oauth/token -s --data-urlencode "client_id=$ACQUIA_API_KEY" --data-urlencode "client_secret=$ACQUIA_API_SECRET" --data-urlencode "grant_type=client_credentials" | jq -e -r '.access_token?')
if [ $? -gt 0 ]; then
  echo "Error retrieving access token."
  exit $?
fi

set -e

exec /entrypoint.sh -H "Authorization: Bearer $TOKEN" "$@"
