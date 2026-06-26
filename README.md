# Gold Telegram Bot

This is a Telegram bot designed to manage user keys, scan for codes, and interact with a voucher system. It includes features for admin control, key generation, and session management.

## Features

- User authentication with expiring keys
- Admin commands for listing, deleting, and generating keys
- Session URL input and validation
- Code scanning with progress updates
- Captcha solving integration
- GitHub integration for configuration files (`auth_list.json`, `result.json`)

## Setup and Deployment

Detailed instructions for setting up and deploying this bot on a VPS using Docker will be provided here.

## Environment Variables

The bot requires the following environment variables to be set:

- `BOT_TOKEN`: Your Telegram bot token.
- `GITHUB_TOKEN`: A GitHub personal access token with `repo` scope for accessing and updating `auth_list.json` and `result.json`.
- `ADMIN_ID`: The Telegram user ID of the administrator.
- `REPO_OWNER`: The GitHub username of the repository owner.
- `REPO_NAME`: The name of the GitHub repository (e.g., `gold`).

## Usage

- `/start`: Start the bot.
- `/key`: Validate your key.
- `/input <session_url>`: Input your session URL.
- `/scan <mode>`: Start scanning for codes (e.g., `/scan 6`, `/scan 7`, `/scan 8`, `/scan all`, `/scan ascii-lower`).
- `/stop`: Stop the current scan.
- `/result`: View found codes.
- `/recheck`: Recheck found codes.

### Admin Commands

- `/listkeys`: List all registered keys.
- `/delkey <user_id>`: Delete a user's key.
- `/genkey <plan> <user_id>`: Generate a new key for a user (e.g., `/genkey 1h 123456789`, `/genkey unlimited 123456789`).
