#!/bin/bash
 

DIR="/Library/Audio/share"
if [ -d "$DIR" ]; then
 
    mount_smbfs //tech-ksmg:XRlRv2lc8t4SslHc41Q@dc01-fs-01.corp.sbercloud.ru/Reports/macstark/ /Library/Audio/share
    # cp -a -n /users/skstarkeevich.loc /Library/Audio/share
    rsync -az /users/skstarkeevich.loc /Library/Audio/share
    umount /Library/Audio/share
    rm -r /Library/Audio/share 
 else 
     mkdir /Library/Audio/share 
   
fi