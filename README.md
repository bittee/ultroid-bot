# Ultroid Telegram Bot

This is a deployment of the Ultroid Telegram userbot using Docker and Render.

## Files

- `Dockerfile` - Contains the Docker configuration for running Ultroid
- `docker-compose.yml` - Docker Compose configuration for local development
- `render.yaml` - Configuration for deploying on Render.com
- `.env` - Environment variables (not included in repo for security)
- `session.txt` - Telegram session file (not included in repo for security)

## Local Development

1. Clone the repository
2. Create a `.env` file with your Telegram API credentials
3. Run with Docker Compose:
   ```bash
   docker-compose up --build
   ```

## Deployment on Render

1. Fork this repository
2. Create a new Web Service on Render
3. Connect your GitHub repository
4. Add environment variables in Render dashboard
5. Deploy!

## Environment Variables

Create a `.env` file with:
```
API_ID=your_api_id
API_HASH=your_api_hash
```

## Security Notes

- Never commit your `.env` file or `session.txt`
- Keep your API credentials secure
- Regularly update your dependencies 