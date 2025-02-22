FROM python:3.9.6

ENV PORT=8000

WORKDIR /app

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY . .

CMD python manage.py runserver 0.0.0.0:$PORT