# Используйте официальный образ Python в качестве базового
FROM python:3.9-slim

# Установите рабочий каталог
WORKDIR /app

# Скопируйте файл зависимостей и установите их
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Скопируйте все файлы проекта в рабочий каталог
COPY . .

# Запустите приложение
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8100"]
