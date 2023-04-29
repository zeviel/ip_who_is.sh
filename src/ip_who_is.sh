#!/bin/bash

api="http://ipwho.is"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"


function get_self_ip_details() {
    curl --request GET \
        --url "$api" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}

function get_ip_details() {
    # 1 - ip_address: (string): <ip_address>
    curl --request GET \
        --url "$api/$1" \
        --user-agent "$user_agent" \
        --header "content-type: application/json"
}
