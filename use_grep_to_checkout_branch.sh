#!/bin/bash

git-checkout-regex-branch() {
  REGEX=$1
  BRANCH="$(g branch | grep -E $REGEX | grep -vx "\*.*" | head -n 1 | tr -d '[:space:]')"

  if [[ -z $BRANCH ]]; then
    echo "regex '$REGEX' match zero branch"
  else
    while true; do
    read -p "Do you want to switch to this branch($BRANCH)? " yn
        case $yn in
            [Yy]* ) git checkout $BRANCH; break;;
            [Nn]* ) echo "Stay on original branch($(git rev-parse --abbrev-ref HEAD))"; break;;
            * ) git checkout $BRANCH; break;;
        esac
    done
  fi
}
