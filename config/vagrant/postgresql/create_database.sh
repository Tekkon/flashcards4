#!/usr/bin/env bash
sudo -u postgres psql -c "CREATE DATABASE flashcards;"
sudo -u postgres psql -c "CREATE USER vagrant WITH PASSWORD 'vagrant';"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE flashcards to vagrant;"
