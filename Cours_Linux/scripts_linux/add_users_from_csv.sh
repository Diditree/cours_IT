#!/usr/bin/env bash

isHomeExist(){
    user=$1
    if [[ -d /home${user} ]]; then
        return 0
    else
        return 1
    fi
}

isGroupExist(){
    user=$1
    grep $user /etc/group > /dev/null
    status=$?
    echo $status
}

{
read header

while IFS="," read userName firstName lastName password; do

        # En commentaire mais ça fonctionne
        if (( $(isHomeExist $userName) == 0 )); then
            useradd $userName -d /home/${userName} -s /bin/bash && echo "$userName:$password" | chpasswd 
        fi

        if (( $(isGroupExist $userName) == 0 )); then
            
            # useradd $userName -md /home/${userName} -g $userName -s /bin/bash && echo "$userName:$password" | chpasswd 
        
        fi
    
    # En commentaire mais ça fonctionne
    # useradd $userName -md /home/${userName} -s /bin/bash && echo "$userName:$password" | chpasswd
    
done 

} < users.csv
