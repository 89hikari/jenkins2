FROM python:3.8-alpine

RUN apk update && apk add build-base

COPY requirements.txt /game/requirements.txt

WORKDIR /game

RUN python3 -m pip install -r requirements.txt