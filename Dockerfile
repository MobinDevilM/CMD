FROM debian:bullseye-slim

RUN apt update && \
    apt install -y curl bash iptables openssl wget cron && \
    apt clean

COPY argosb.sh /argosb.sh

RUN chmod +x /argosb.sh

CMD ["bash", "/argosb.sh"]
