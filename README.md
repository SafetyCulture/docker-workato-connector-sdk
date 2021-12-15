# docker-workato-connector-sdk

Docker image with Ruby and the Workato Connector SDK pre installed

## Usage

```bash
docker run \
  --env WORKATO_API_EMAIL="my-email" \
  --env WORKATO_API_TOKEN="my-token" \
  -v $(pwd):/usr/src/connector \
  --workdir /usr/src/connector \
  ghcr.io/safetyculture/workato-connector-sdk:0.3.0
  help
```

## Updating

1. Update the version in `WORAKTO_SDK_VERSION.txt`.
2. Run `./build.sh && docker push ghcr.io/safetyculture/workato-connector-sdk:$(cat WORAKTO_SDK_VERSION.txt)`
