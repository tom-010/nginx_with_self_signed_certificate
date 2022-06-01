#!/bin/bash

mkcert -install
mkcert -cert-file=certs/tls.crt -key-file=certs/tls.key example.com "*.example.com" site1.example.com 

# manually, vai open-ssl:


# openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
#     -config req.conf -extensions 'v3_req' \
#     -keyout certs/tls.key -out certs/tls.crt

# install it
# sudo rm /usr/local/share/ca-certificates/tls.crt 2> /dev/null || true
# sudo cp certs/tls.crt /usr/local/share/ca-certificates/
# sudo update-ca-certificates