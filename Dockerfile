# Ubuntu 20.04 base image
FROM ubuntu:20.04
# Update apt package list, install curl, cron, and remove apt cache to reduce image size
RUN apt-get update && apt-get install -y \
    curl \
    cron \
    && rm -rf /var/lib/apt/lists/*
COPY cron.sh /cron.sh
RUN chmod +x /cron.sh
RUN echo "*/5 * * * * /cron.sh" > /etc/cron.d/cron-job
RUN chmod 0644 /etc/cron.d/cron-job
RUN mkdir -p /metrics
RUN chmod -R 777 /metrics
CMD ["cron", "-f"]
