FROM alpine:3.19
WORKDIR /app
# Install required packages
RUN apk add --no-cache bash fortune-mod netcat-openbsd curl \
    && mkdir -p /usr/local/bin \
    && curl -L https://raw.githubusercontent.com/tnalpgge/rank-amateur-cowsay/master/cowsay -o /usr/local/bin/cowsay \
    && chmod +x /usr/local/bin/cowsay
COPY wisecow.sh /app/
RUN chmod +x /app/wisecow.sh
EXPOSE 4499
CMD ["sh", "/app/wisecow.sh"]