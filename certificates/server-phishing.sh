#!/usr/bin/env bash
set -e

CA_PATH=../ca
CERTS_PATH=server-certs

export CA_DIR=$CA_PATH
export INTERMEDIATE_DIR=$CA_PATH/intermediate

mkdir -p $CERTS_PATH/certs $CERTS_PATH/csr $CERTS_PATH/private
cp openssl/server/openssl-phishing-server.conf $CERTS_PATH/
cd $CERTS_PATH


# Phising Server

openssl genrsa \
      -out private/phishing-server.key.pem 8192
chmod 400 private/phishing-server.key.pem

openssl req -config openssl-phishing-server.conf \
      -key private/phishing-server.key.pem \
      -subj "/C=ES/ST=Spain/L=Madrid/O=Acme S.A./CN=Phishing Server" \
      -new -sha256 -out csr/phishing-server.csr.pem
      
openssl ca -config $CA_PATH/intermediate/openssl.conf \
      -extensions client_server_cert -batch -days 1825 -notext -md sha256 \
      -in csr/phishing-server.csr.pem \
      -out certs/phishing-server.cert.pem
chmod 444 certs/phishing-server.cert.pem

cat certs/phishing-server.cert.pem $CA_PATH/intermediate/certs/intermediate.cert.pem > certs/phishing-server-chain.cert.pem

openssl x509 -noout -text \
      -in certs/phishing-server.cert.pem
openssl verify -CAfile $CA_PATH/intermediate/certs/ca-chain.cert.pem \
      certs/phishing-server.cert.pem
      
