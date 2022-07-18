#!/bin/sh

export LD_LIBRARY_PATH=/opt/openssl-3.0.0/lib64
export PATH="/opt/openssl-3.0.0/bin:$PATH"

openssl ca \
    -config intermediate.cnf \
    -extensions v3_server_cert \
    -policy policy_server_cert \
    -in  ../server/server_csr.pem \
    -out ../server/server_cert.pem
