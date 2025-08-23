FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

RUN addgroup --system app && adduser --system --ingroup app app

COPY . .
RUN chown -R app:app /app

USER app

EXPOSE 5000

CMD ["python", "app.py"]