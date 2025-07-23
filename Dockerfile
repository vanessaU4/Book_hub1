# Stage 1: Build React Frontend
FROM node:20-alpine AS frontend

WORKDIR /app/frontend
COPY Frontend/book-hub/package*.json ./
RUN npm install
COPY Frontend/book-hub .
RUN npm run build

# Stage 2: Build Django Backend
FROM python:3.11-slim AS backend

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y gcc libpq-dev

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy Django project
COPY Backend/book_hub /app

# Copy frontend static files
COPY --from=frontend /app/frontend/dist /app/static/

CMD ["gunicorn", "bookhub.wsgi:application", "--bind", "0.0.0.0:8000"]
