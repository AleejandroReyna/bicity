FROM python:3.13.0a4-slim-bullseye
RUN apt upgrade && apt update
RUN apt -y install gcc musl-dev libmysqlcppconn7v5
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/
ENTRYPOINT [ "/app/entrypoint.sh" ]