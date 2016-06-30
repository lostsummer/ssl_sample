#!/bin/bash

openssl genrsa  -aes256 -out privkey.pem -passout pass:emoney.cn 1024
openssl rsa -in privkey.pem -out privkey.pem -passin pass:emoney.cn
openssl req -new -x509 -key privkey.pem -out CAcert.pem -subj /C=CN/ST=Shanghai/O=emoney/CN=localhost -days 1095