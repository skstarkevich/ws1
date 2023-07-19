#!/bin/bash
 

DIR="/Library/Audio/share"
if [ -d "$DIR" ]; then
 
    mount_smbfs //login:pass@dc01-fs-01.corp.sbercloud.ru/Reports/macstark/ /Library/Audio/share
    #timeout 3540 cp -a -n /users/test /Library/Audio/share
    rsync -azruq ={'Архив Outlook для Mac 29.06.2022.olm','/Library/Audio/share'} /users/test /Library/Audio/share
    
 else 
     mkdir /Library/Audio/share 
   
fi