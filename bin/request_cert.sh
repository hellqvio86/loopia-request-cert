#!/bin/bash
source .venv/bin/activate
certbot certonly --non-interactive --agree-tos -m certbot@hellqvio.se --authenticator dns-loopia --dns-loopia-credentials loopia_credentials.ini -d *.hellqvio.se
