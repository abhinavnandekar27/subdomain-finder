#!/bin/bash

domain=$1
wordlist=$2

while read sub; do
  full_domain="$sub.$domain"
  
  if host -t a "$full_domain" &> /dev/null; then
    echo "Subdomain found: $full_domain"

    ip=$(host -t a "$full_domain" | grep 'has address' | awk '{print $4}')
    echo "IP Address: $ip"
	
    server=$(curl -s -I "${full_domain}" | grep -i "server" | awk '{print $2}')
    echo "Server: $server"

    echo ""
  fi
done < $wordlist

