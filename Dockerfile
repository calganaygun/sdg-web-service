FROM tiangolo/uvicorn-gunicorn:python3.8-slim

LABEL maintainer="Çalgan Aygün <calganaygun@hacettepe.edu.tr>"

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD uvicorn main:app --host 0.0.0.0 --port ${PORT}