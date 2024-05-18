# Hi.Events Render.com One-Click Deployment

Deploy Hi.Events with one click on Render.

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/HiEventsDev/hi.events-render.com)

## 🚀 How to Use

1. Click the Deploy to Render button above.
2. Follow the Render setup instructions.
3. Complete the setup and deploy your application.

## 🔄 How to Update

1. Open the Render [dashboard](https://dashboard.render.com/) and select your deployed hi.events instance.
2. Click the **"Manual Deploy"** drop-down menu.
3. Select **"Clear build cache & deploy"** to start a fresh deployment.
4. Wait for the deployment process to complete.

## 🔧 Production Setup

To make the app production-ready:

- Configure a mail service via environment variables.
- Set up Stripe for payment processing via environment variables.
- It's advisable to configure Amazon S3 for storage to prevent loss of images during upgrades.
- Updated the APP_KEY environment variable with a secure value. You can generate one using the following CLI command:
  ```bash
  echo "base64:$(openssl rand -base64 32)"
  ```
  

For detailed setup instructions, check [here](https://hi.events/docs/getting-started/deploying).

## 📜 Licensing

This project is licensed under the terms specified [here](https://hi.events/licensing).

If you'd like to remove the Hi.Events branding, you must [purchase a licence](https://hi.events/licensing).