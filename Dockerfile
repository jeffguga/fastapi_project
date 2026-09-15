FROM python:3.14.7-slim

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt
RUN pip install pytest

COPY . .

CMD uvicorn main:app --host 0.0.0.0 --port 8000
