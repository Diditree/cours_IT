#!/usr/bin/env bash
{
read -r header
while IFS="," read -r userName firstName lastName password; do
  useradd $userName -md /home/${userName} -s /bin/bash && chpassw echo "$userName:$password" | chpasswd
done 
} < users.csv
