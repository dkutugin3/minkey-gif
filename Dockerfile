# Используем базовый образ Python
FROM python:3.9

# Устанавливаем зависимости
RUN pip install fastapi

# Копируем все файлы в контейнер
COPY . /app
WORKDIR /app

# Открываем порт 5000
EXPOSE 8000

# Запускаем приложение Flask
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
