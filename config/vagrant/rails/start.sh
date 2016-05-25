#!/usr/bin/env bash
cd /vagrant
bundle install
rake db:migrate
thin start -p 3000
