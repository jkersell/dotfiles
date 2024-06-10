#!/bin/bash

mkdir --parents --verbose "$HOME/.profile.d"
cp --verbose .profile.d/* "$HOME/.profile.d"

customization_marker="### customization ###"

if grep "$customization_marker" "$HOME/.profile" > /dev/null; then
  echo "Customization already present in $HOME/.profile"
  exit 0;
fi

# This snippet is copied from /etc/profile on an Ubuntu system and
# adapted to run scripts in the custom user .profile.d directory
cat >> "$HOME/.profile" <<EOF


$customization_marker


if [ -d "$HOME/.profile.d" ]; then
  for i in "$HOME"/.profile.d/*.sh; do
    if [ -r "\$i" ]; then
      . "\$i"
    fi
  done
  unset i
fi
EOF

