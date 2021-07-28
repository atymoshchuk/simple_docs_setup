FROM tiangolo/uvicorn-gunicorn:python3.7

COPY ./app /app
COPY requirements/app.txt /app

WORKDIR /app/

ENV PYTHONPATH=/app

RUN pip install --no-cache-dir -r app.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
