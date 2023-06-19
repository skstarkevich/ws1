#!/bin/sh

NEW_VER = 14
VER = $( defaults read /Library/Application\ Support/Kaspersky\ Lab/KAV/Applications/Kaspersky\ Anti-Virus\ Agent.app/Contents/Info.plist CFBundleShortVersionString )
if [ "$NEW_VER" == "$VER" ]; then
    echo 0
    elso
    echo 1
fi