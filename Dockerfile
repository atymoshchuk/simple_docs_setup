FROM tiangolo/uvicorn-gunicorn:python3.7

ADD ./app /app
COPY ./requirements.txt /app

WORKDIR /app/

ENV PYTHONPATH=/app

RUN pip install --no-cache-dir fastapi

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
