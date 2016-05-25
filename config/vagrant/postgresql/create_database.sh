#!/usr/bin/env bash
sudo -u postgres psql -c "CREATE DATABASE flashcards;"
sudo -u postgres psql -c "CREATE USER vagrant WITH PASSWORD 'vagrant';"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE flashcards to vagrant;"
cd /etc/postgresql/9.4/main
echo -n "local         all         postgres        md5
local         all         all         md5
host        all          all        127.0.0.1/32         md5
host        all         all         ::1/128          md5" > "pg_hba.conf"
sudo service postgresql restart
cd /
