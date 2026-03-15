FROM debian:bullseye-slim

WORKDIR /app

# Install required packages
RUN apt-get update && \
    apt-get install -y cowsay fortune-mod netcat-openbsd && \
    rm -rf /var/lib/apt/lists/*

COPY wisecow.sh /app/

RUN chmod +x /app/wisecow.sh

EXPOSE 4499

CMD ["sh", "/app/wisecow.sh"]