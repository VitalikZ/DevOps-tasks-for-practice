FROM python:3

WORKDIR /app

COPY Python-api/requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY Python-api/ /app/

EXPOSE 80

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
