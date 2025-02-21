#!/usr/bin/env bash

clear
ncal -bwM
current_date=$(date "+%Y-%m-%d")

while read -rsn1 key; do
    action=""
    if [[ "$key" == "h" ]]; then
        action="-1 day"
    elif [[ "$key" == "l" ]]; then
        action="+1 day"
    elif [[ "$key" == "j" ]]; then
        action="+1 week"
    elif [[ "$key" == "k" ]]; then
        action="-1 week"
    elif [[ "$key" == "u" ]]; then
        action="-1 month"
        current_date="$(date --date="$current_date" "+%Y-%m")-15"
    elif [[ "$key" == "o" ]]; then
        action="+1 month"
        current_date="$(date --date="$current_date" "+%Y-%m")-15"
    elif [ "$key" == "" ]; then
        # Maintain xclip if the terminal is closed.
        echo -n "$current_date" | nohup xclip -selection clipboard >/dev/null 2>&1
        break
    elif [[ "$key" == $'\e' ]] || [[ $key == "q" ]]; then
        break
    fi
    if [[ -n $action ]]; then
        clear
        current_date=$(date --date="$current_date $action" "+%Y-%m-%d")
        ncal -bwMH "$current_date" -d "$(date --date="$current_date" "+%Y-%m")"
    fi
done
