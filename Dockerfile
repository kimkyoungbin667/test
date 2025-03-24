FROM ubuntu:latest
LABEL authors="User"

COPY . /app
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get install -y python3-venv && \
    apt-get clean


WORKDIR /app
CMD ["python3", "app.py"]