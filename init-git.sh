#!/usr/bin/env bash
set -e
if [ -z "$1" ]; then
  echo "Usage: ./init-git.sh git@github.com:username/repo.git"
  exit 1
fi
git init
git add .
git commit -m "Initial commit - GestorVentasWeb"
git branch -M main
git remote add origin "$1"
git push -u origin main
