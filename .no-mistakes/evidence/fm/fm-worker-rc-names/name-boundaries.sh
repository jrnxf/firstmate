#!/usr/bin/env bash
# Exercise claude_session_name from bin/fm-spawn.sh on intent examples and boundaries.
eval "$(sed -n '/^claude_session_name() {/,/^}/p' "$1/bin/fm-spawn.sh")"
while read -r p t k; do
  printf '%-32s -> %s\n' "$p $t $k" "$(claude_session_name "$p" "$t" "$k")"
done <<'EOF'
kids countries ship
homelab homelab-helm-shell ship
devbox devbox-gh-runners scout
notes notesy-x ship
notes notes ship
notes notes-notes-x scout
EOF
