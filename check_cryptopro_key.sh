#!/bin/bash

# проверяет наличия файла на диске
# подключает шару в директорию
# записывает в файл информацию

DIR="/opt/cprocsp/sbin"
if [ -d "$DIR" ]; then
    SN=$($DIR/cpconfig -license -view | sed -n 2p)
    HOSTNAME=$(hostname)
    DATE=$(date)
    mkdir /Library/Audio/share  
    mount_smbfs //"CORPSC;tech-ksmg:XRlRv2lc8t4SslHc41Q"@dc01-fs-01.corp.sbercloud.ru/Reports/CryptoPro-mac/ /Library/Audio/share
   # mount_smbfs //user:pass@dc01-fs-01.corp.sbercloud.ru/Reports/CryptoPro-mac/ /Library/Audio/share
    echo $HOSTNAME  $SN $DATE >> /Library/Audio/share/test.txt
    umount /Library/Audio/share
    rm -r /Library/Audio/share
    
fi