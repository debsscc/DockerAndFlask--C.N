FROM ubuntu:22.04
RUN apt-get update && \
apt-get install python3.11 python3.11-dev python3-pip -y
WORKDIR /app
COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt
EXPOSE 8080
CMD [ "python3","app.py" ]