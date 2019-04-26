#!/bin/bash

################################################
# Unify repositories as a standard cli command #
################################################

echo "=== new-project ==="

args=("$@")
project=${args[0]}
new_project_path=${args[1]}

function clone () {
  git clone $1 $2
  cd $2
  rm -rf .git/
  git init
  echo "Starter $2 created"
}

case $project in
  "mithril" )
    clone git@github.com:mdxprograms/mithril-starter.git $new_project_path
    ;;
  "sapper" )
    clone "-b webpack git@github.com:sveltejs/sapper-template.git" $new_project_path
    ;;
  "svelte" )
    clone git@github.com:kazzkiq/svelte-simple-starter-kit.git $new_project_path
    ;;
esac
