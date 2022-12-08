#!/bin/bash

git clone https://github.com/mastodon/mastodon.git /home/mastodon/live && cd /home/mastodon/live

git checkout $(git tag -l | grep -v 'rc[0-9]*$' | sort -V | tail -n 1)

bundle config deployment 'true'

bundle config without 'development test'

bundle install -j$(getconf _NPROCESSORS_ONLN)

yarn install --pure-lockfile

exit
