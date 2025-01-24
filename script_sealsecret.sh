#!/bin/bash 

kubeseal --fetch-cert --controller-name=sealed-secrets --controller-namespace=sealed-secrets > pub-cert.pem
kubeseal --cert pub-cert.pem -f $1 -w $2
rm pub-cert.pem
