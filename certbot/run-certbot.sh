#!/bin/bash

letsencrypt certonly --webroot -w /var/www/letsencrypt --email "$EMAIL" -d "$CN" --agree-tos --no-eff-email --force-renewal --non-interactive --text

cp /etc/letsencrypt/archive/"$CN"/cert1.pem /var/certs/cert1.pem
cp /etc/letsencrypt/archive/"$CN"/privkey1.pem /var/certs/privkey1.pem
