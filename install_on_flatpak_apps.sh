#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

for app in ~/.var/app/*; do
    cd "$app"/config &&
    rm -rf fontconfig-backup &&
    if [ -e fontconfig ]; then
        mv fontconfig fontconfig-backup &&
        echo 已將原有的 "$app"/config/fontconfig 備份為 fontconfig-backup
    fi
    cp -r "$SCRIPT_DIR"/fontconfig . &&
    echo 已在 "$app"/config 安裝完成新的 fontconfig。
done
