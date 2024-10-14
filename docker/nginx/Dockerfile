FROM nginx:1.27-alpine

ENV TZ=Asia/Tokyo

RUN apk add --no-cache inotify-tools

COPY ./docker/nginx/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]