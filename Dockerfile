FROM ubuntu:latest
LABEL authors="User"

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean

COPY . /app
WORKDIR /app

RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["python3", "app.py"]
