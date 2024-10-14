FROM node:20.18-alpine

ENV TZ=Asia/Tokyo

RUN apt-get update && \
    apt-get -y install \
    git \
    zip \
    unzip \
    vim \
    nano \
    gosu \
    make

COPY ./docker/next/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["npm run dev"]