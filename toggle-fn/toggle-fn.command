#!/usr/bin/env bash

current_value=$(defaults read -g com.apple.keyboard.fnState)

if [ $current_value == "0" ]; then
    defaults write -g com.apple.keyboard.fnState -boolean true
else
    defaults write -g com.apple.keyboard.fnState -boolean false
fi

# reload above settings
/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
