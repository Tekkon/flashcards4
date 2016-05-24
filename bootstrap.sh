#!/usr/bin/env bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-cache search libcurl
sudo apt-get install -y curl
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --rails
sudo apt-get install -y git
sudo apt-get install -y mc
sudo apt-get install -y postgresql-9.4 postgresql-client-9.4
sudo -u postgres psql
CREATE DATABASE flashcards;
CREATE USER vagrant WITH PASSWORD 'vagrant';
GRANT ALL PRIVILEGES ON DATABASE "flashcards" to vagrant;
\q
cd /vagrant
sudo apt-get install -y nodejs
sudo apt-get install -y libpq-dev
bundle install
rake db:migrate
rails s thin
