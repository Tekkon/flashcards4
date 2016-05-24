#!/usr/bin/env bash
cd /vagrant
bundle install
rake db:migrate
rails s thin
