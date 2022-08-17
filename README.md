# docker-workato-connector-sdk

Docker image with Ruby and the Workato Connector SDK pre installed

## Usage

```bash
docker run \
  --env WORKATO_API_EMAIL="my-email" \
  --env WORKATO_API_TOKEN="my-token" \
  -v $(pwd):/usr/src/connector \
  --workdir /usr/src/connector \
  ghcr.io/safetyculture/workato-connector-sdk:latest
  help
```

## Updating

Manually trigger the GitHub action to recreate the image with the latest version of the gem.
