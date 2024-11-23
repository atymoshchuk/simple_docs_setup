FROM python:3.14.0a2-alpine3.20

COPY ./app /app
COPY requirements/app.txt /app

WORKDIR /app/

ENV PYTHONPATH=/app

RUN pip install --no-cache-dir -r app.txt

CMD ["fastapi", "run", "main.py"]
