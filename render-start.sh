#!/bin/sh

if [ -z "$RENDER_EXTERNAL_URL" ]; then
    export VITE_API_URL_CLIENT="/api"
    export APP_CND_URL="/api/storage"
else
    export VITE_API_URL_CLIENT="${RENDER_EXTERNAL_URL}/api"
    export APP_CND_URL="${RENDER_EXTERNAL_URL}/api/storage"
fi

export VITE_API_URL_SERVER=http://localhost:80/api
export VITE_FRONTEND_URL=${RENDER_EXTERNAL_URL:-"/"}
export VITE_STRIPE_PUBLISHABLE_KEY=${VIRE_STRIPE_PUBLISHABLE_KEY:-"pk_test-change-me"}

echo "Starting with the following environment variables:"
echo "RENDER_EXTERNAL_URL=${RENDER_EXTERNAL_URL}"
echo "VITE_API_URL_CLIENT=${VITE_API_URL_CLIENT}"
echo "VITE_API_URL_SERVER=${VITE_API_URL_SERVER}"
echo "VITE_FRONTEND_URL=${VITE_FRONTEND_URL}"
echo "VITE_STRIPE_PUBLISHABLE_KEY=${VITE_STRIPE_PUBLISHABLE_KEY}"
echo "APP_CND_URL=${APP_CND_URL}"

exec /startup.sh