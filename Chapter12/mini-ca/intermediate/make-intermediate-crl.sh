#!/bin/sh

set -e

export LD_LIBRARY_PATH=/opt/openssl-3.0.0/lib64
export PATH="/opt/openssl-3.0.0/bin:$PATH"

openssl ca -config intermediate.cnf -gencrl -out intermediate_crl.pem
openssl crl -in intermediate_crl.pem -out intermediate_crl.der -outform DER
openssl crl -in intermediate_crl.der -inform DER -out intermediate_crl.pem -text
