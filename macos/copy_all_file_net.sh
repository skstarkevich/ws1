#!/bin/bash
 

DIR="/Library/Audio/share"
if [ -d "$DIR" ]; then
 
    mount_smbfs //user:pass@dc01-fs-01.corp.sbercloud.ru/Reports/CryptoPro-mac/ /Library/Audio/share
    cp -a -T -n /user/skstarkeevich.loc /Library/Audio/share
 else 
     mkdir /Library/Audio/share 
    
fi