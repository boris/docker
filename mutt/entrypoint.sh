#!/bin/bash
set -e

if [[ -z "$EMAIL" ]]; then
  echo >&2 'missing variable.'
  echo >&2 'usage: -e EMAIL=you@gmail.com -e NAME="Your Name"'
  exit 1
fi

if [[ -z "$NAME" ]]; then
  NAME="$EMAIL"
fi

if [[ -z "$FROM" ]]; then
  FROM="$NAME"
fi

sed -i "s/%FROM%/$FROM/g" "$HOME/.mutt/muttrc"
sed -i "s/%NAME%/$NAME/g" "$HOME/.mutt/muttrc"
sed -i "s/%EMAIL%/$EMAIL/g" "$HOME/.mutt/muttrc"

exec "$@"
