#!/bin/bash

customization_marker="### customization ###"

customize_file () {
  target_file="$1"

  echo "Cusomtizing $HOME/$target_file"

  # This snippet is copied from /etc/profile on an Ubuntu system and
  # adapted to run scripts in the custom user directory
  cat >> "$HOME/$target_file" <<HERE


$customization_marker


if [ -d "$HOME/$target_file.d" ]; then
  for i in "$HOME/$target_file.d"/*.sh; do
    if [ -r "\$i" ]; then
      . "\$i"
    fi
  done
  unset i
fi
HERE
}

# Customize the .profile file
target_file=".profile"
if ! grep "$customization_marker" "$HOME/$target_file" > /dev/null; then
  customize_file "$target_file"
fi

mkdir --parents --verbose "$HOME/$target_file.d"
cp --verbose "$target_file".d/* "$HOME/$target_file.d"

# Customize the .bashrc file
target_file=".bashrc"
if ! grep "$customization_marker" "$HOME/$target_file" > /dev/null; then
  customize_file "$target_file"
fi

mkdir --parents --verbose "$HOME/$target_file.d"
cp --verbose "$target_file".d/* "$HOME/$target_file.d"
