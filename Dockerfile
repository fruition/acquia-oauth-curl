FROM curlimages/curl:latest

USER root
RUN apk --update --no-cache add jq
COPY entrypoint.sh /local-entrypoint.sh
USER curl_user
ENTRYPOINT ["/local-entrypoint.sh"]
