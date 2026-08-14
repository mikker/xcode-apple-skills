#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
destination="$root/bundled"
staging="$(mktemp -d "$root/.bundled.XXXXXX")"

cleanup() {
  rm -rf "$staging"
}
trap cleanup EXIT

xcrun agent skills export --output-dir "$staging"

rm -rf "$destination"
mv "$staging" "$destination"
trap - EXIT

printf 'Refreshed Xcode skills in %s\n' "$destination"
