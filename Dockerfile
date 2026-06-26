FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY botsell.py .
COPY auth_list.json .
COPY result.json .

CMD ["python", "botsell.py"]
