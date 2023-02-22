#!/bin/sh

curl -s https://api.github.com/repos/revanced/revanced-cli/releases/latest | grep ".jar" | cut -d : -f 2,3 | tr -d \" | awk 'NR>1' | awk '{$1=$1;print}' | xargs curl -L -o revanced-cli.jar
curl -s https://api.github.com/repos/revanced/revanced-patches/releases/latest | grep ".jar" | cut -d : -f 2,3 | tr -d \" | awk 'NR>1' | awk '{$1=$1;print}' | xargs curl -L -o revanced-patches.jar
curl -s https://api.github.com/repos/revanced/revanced-integrations/releases/latest | grep ".apk" | cut -d : -f 2,3 | tr -d \" | awk 'NR>1' | awk '{$1=$1;print}' | xargs curl -L -o integrations.apk
