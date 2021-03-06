FROM python:3.8-buster

LABEL maintainer="andreybibea@gmail.com"

ENV TZ=Europe/Moscow

WORKDIR /tg_avatar

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3",  "-m", "telegram_avatar"]
