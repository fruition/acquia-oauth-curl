# Docker image for calling Acquia Cloud API with `curl` and OAuth2

This Docker image provides a small, Alpine-based derivative of 
[`curlimages/curl`](https://hub.docker.com/r/curlimages/curl) that contains
`jq`. Pass your API key and secret for
[Acquia Cloud API](https://cloudapi-docs.acquia.com/) and `curl` will obtain and
send an access token with your request.

Required environment variables:

* `ACQUIA_API_KEY` and `ACQUIA_API_SECRET`; see
  [Acquia's documentation](https://docs.acquia.com/acquia-cloud/develop/api/auth/).
  
## Usage

Export your environment variables, then:
```shell script
docker run -e ACQUIA_API_KEY -e ACQUIA_API_SECRET --rm fruition/acquia-oauth-curl https://cloud.acquia.com/api/account
```

### Shameless sales pitch; why need this package in the first place?

Would you rather offload CI/CD to the experts at Fruition? Learn more about our
fully-managed, Kubernetes
[hosting platform](https://fruition.net/service/fully-managed-hosting/).

&copy; Fruition Growth, LLC. MIT license.
