#!/bin/bash

bundle exec jekyll build -d public
rsync -avu -e "ssh -p22" --exclude=deploy.sh --delete-excluded public/ alfa:html/primios
