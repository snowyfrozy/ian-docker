FROM postman/newman:alpine

# RUN apk add --no-cache --no-progress mysql-client
RUN apk add --update mysql mysql-client && rm -f /var/cache/apk/*
RUN apk update && apk add bash

VOLUME [ "/data" ]

RUN mkdir app

WORKDIR /data

COPY blub.sql .
COPY postman.json .

COPY init.sh .
RUN ln -s init.sh / # backwards compat
ENTRYPOINT ["/data/init.sh"]


# ENTRYPOINT ["tail", "-f", "/dev/null"]