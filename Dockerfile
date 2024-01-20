FROM python:3.7.4-alpine3.10

WORKDIR /app

COPY requirements.txt  /app

RUN pip install -r requirements.txt

COPY . /app

CMD ["python", "app.py"]