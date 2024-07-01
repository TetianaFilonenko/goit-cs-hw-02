# Вихідний образ
FROM python:3.10-slim

# Встановлення робочого каталогу
WORKDIR /app

# Копіювання файлів застосунку у робочий каталог
COPY . /app

# Встановлення залежностей
RUN pip install --no-cache-dir -r requirements.txt

# Відкриття порту для застосунку
EXPOSE 8000

# Команда для запуску FastAPI застосунку
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
