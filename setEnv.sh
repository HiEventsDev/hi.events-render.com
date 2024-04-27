#!/bin/sh

env_file="/app/frontend/.env"

rm -f $env_file

add_env_var() {
    local key=$(echo $1 | cut -d '=' -f 1)
    if ! grep -q "^$key=" $env_file; then
        echo "$1" >> $env_file
        echo "Setting environment variable: $1"
    else
        echo "Environment variable $key already set, skipping..."
    fi
}

add_env_var "APP_FRONTEND_URL=${RENDER_EXTERNAL_URL}"
add_env_var "VITE_API_URL_CLIENT=${RENDER_EXTERNAL_URL}/api"
add_env_var "VITE_API_URL_SERVER=http://localhost:80/api"

# Set other VITE_* environment variables dynamically
for var in $(env | grep -E "^VITE_")
do
  add_env_var "$var"
done
