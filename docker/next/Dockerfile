FROM node:20.18-alpine

ENV TZ=Asia/Tokyo

RUN apk update && \
    apk add --no-cache \
    git \
    zip \
    unzip \
    vim \
    nano \
    su-exec \
    make

COPY ./docker/next/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["npm run dev"]