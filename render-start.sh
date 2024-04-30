#!/bin/sh

export VITE_API_URL_CLIENT=${VITE_API_URL_CLIENT:-"/api"}
export VITE_API_URL_SERVER=${VITE_API_URL_SERVER:-"http://localhost:80/api"}
export VITE_FRONTEND_URL=${VITE_FRONTEND_URL:-"/"}
export VITE_STRIPE_PUBLISHABLE_KEY=${VITE_STRIPE_PUBLISHABLE_KEY:-"change-me"}

exec /startup.sh
