#!/bin/bash
 
#Required
domain=$1
commonname=$domain
 
#Your details that you must file in
country=
state=
locality=
organization=
organizationalunit=
email=
 
if [ -z "$domain" ]
then
    echo "Argument not present."
    echo "Useage $0 [domain name]"
 
    exit 99
fi
 
echo "Generating key request for $domain"
 
#Generate a key
openssl genrsa -out $domain.key 2048 
 
#Create the request
echo "Creating CSR"
subject="/C=$country/ST=$state/L=$locality/O=$organization/OU=$organizationalunit/CN=$commonname/emailAddress=$email"
openssl req -sha256 -new -key $domain.key -out $domain.csr -subj $subject
 
echo "---------------------------"
echo "-----Below is your CSR-----"
echo "---------------------------"
echo
cat $domain.csr
 
echo
echo "---------------------------"
echo "-----Below is your Key-----"
echo "---------------------------"
echo
cat $domain.key
