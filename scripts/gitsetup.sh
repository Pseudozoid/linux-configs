#!/bin/bash

# Usage: ./gitsetup.sh <repo-name> <commit-message> [--private|--public]
if [ "$#" -lt 2 ]; then
  echo "Usage: $0 <repo-name> <commit-message> [--private|--public]"
  exit 1
fi

REPO_NAME=$1
COMMIT_MSG=$2
VISIBILITY=${3:-"--private"} 

git init
git add .
git commit -m "$COMMIT_MSG"

if [ "$VISIBILITY" == "--private" ]; then
  gh repo create "$REPO_NAME" --private
elif [ "$VISIBILITY" == "--public" ]; then
  gh repo create "$REPO_NAME" --public
else
  echo "Invalid visibility option. Use --private or --public."
  exit 1
fi

# Change github_username to your github username below
git remote add origin git@github.com:Pseudozoid/"$REPO_NAME".git
git push -u origin main

