FROM alpine:3.19

WORKDIR /app

RUN apk add --no-cache bash curl fortune netcat-openbsd

RUN curl -L https://raw.githubusercontent.com/tnalpgge/rank-amateur-cowsay/master/cowsay \
    -o /usr/local/bin/cowsay && chmod +x /usr/local/bin/cowsay

COPY wisecow.sh .

RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["sh","wisecow.sh"]