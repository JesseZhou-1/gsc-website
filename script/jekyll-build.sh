#!/usr/bin/env bash
set -euo pipefail

# Prefer Homebrew Ruby 3 if available.
if [ -x "/opt/homebrew/opt/ruby@3.3/bin/ruby" ]; then
  export PATH="/opt/homebrew/opt/ruby@3.3/bin:$PATH"
fi

export BUNDLE_PATH="${BUNDLE_PATH:-vendor/bundle}"

bundle check >/dev/null 2>&1 || bundle install
bundle exec jekyll build
