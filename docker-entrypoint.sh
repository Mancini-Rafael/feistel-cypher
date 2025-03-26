#!/bin/sh

set -e

echo "=== ENTRYPOINT ==="

COMMAND="$1"

echo "=== ChECKING DEPENDENCIES ==="

case "$COMMAND" in
  test)
    echo "=== RUNNING TEST SUITE ==="
    rspec spec
    ;;
  main)
    echo "=== RUNNING MAIN SCRIPT ==="
    ruby run.rb
    ;;
  *)
    echo "=== RUNNING COMAND  $*==="
    sh -c "$*"
    ;;
esac