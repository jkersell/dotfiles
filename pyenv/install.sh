#!/bin/bash

mkdir --parents --verbose "$HOME/.profile.d"
cp --verbose .profile.d/* "$HOME/.profile.d"
