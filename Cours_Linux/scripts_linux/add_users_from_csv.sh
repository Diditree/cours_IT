#!/usr/bin/env bash

# isGroupExist(){
#     user=$1
#     if [[ -f /home${user} ]]; then
#     echo $user
#     echo "home déjà existant"
# }



{
read header

while IFS="," read userName firstName lastName password; do

    # isGroupExist $userName
    useradd $userName -md /home/${userName} -s /bin/bash && echo "$userName:$password" | chpasswd
    
done 

} < users.csv
