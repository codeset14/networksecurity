FROM python:3.10-slim-buster

WORKDIR /app
COPY . .

RUN apt-get update && apt-get install -y \
    gcc \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install awscli

CMD ["python", "app.py"]
