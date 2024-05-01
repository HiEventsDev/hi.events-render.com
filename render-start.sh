#!/bin/sh

if [ -z "$RENDER_EXTERNAL_URL" ]; then
    export VITE_API_URL_CLIENT="/api"
else
    export VITE_API_URL_CLIENT="${RENDER_EXTERNAL_URL}/api"
fi

export VITE_API_URL_SERVER=http://localhost:80/api
export VITE_FRONTEND_URL=${RENDER_EXTERNAL_URL:-"/"}
export VITE_STRIPE_PUBLISHABLE_KEY=${VIRE_STRIPE_PUBLISHABLE_KEY:-"change-me"}

exec /startup.sh