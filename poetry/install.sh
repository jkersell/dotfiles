#!/bin/bash

curl --silent --show-error --location https://install.python-poetry.org | python3 -

mkdir --parents --verbose "$HOME/.profile.d"
cp --verbose .profile.d/* "$HOME/.profile.d"
