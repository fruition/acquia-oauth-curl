# Docker image for calling Acquia Cloud API with `curl` and OAuth2

This Docker image provides a small, Alpine-based derivative of 
[`curlimages/curl`](https://hub.docker.com/r/curlimages/curl) that contains
`jq`. Pass your API key and secret for
[Acquia Cloud API](https://cloudapi-docs.acquia.com/) and `curl` will obtain and
send an access token with your request.

Required environment variables:

* `ACQUIA_API_KEY` and `ACQUIA_API_SECRET`; see
  [Acquia's documentation](https://docs.acquia.com/acquia-cloud/develop/api/auth/).

### Shameless sales pitch; don't have a reason to need this.

Would you rather offload CI/CD to the experts at Fruition? Learn more about our
fully-managed, Kubernetes
[hosting platform](https://fruition.net/service/fully-managed-hosting/).

&copy; Fruition Growth, LLC.
