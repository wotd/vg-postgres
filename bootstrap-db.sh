#!/bin/bash
locale-gen pl_PL pl_PL.UTF-8
dpkg-reconfigure locales
apt-get update
echo "192.168.50.40 db" >> /etc/hosts

apt-get -y install postgresql postgresql-contrib

cat << EOF | su - postgres -c psql
-- Create the database:
CREATE DATABASE dvdrental;
EOF

cat << EOF | su - postgres
pg_restore -d dvdrental /vagrant/dvdrental.tar
EOF
