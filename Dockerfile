# Образ Python
FROM python:3.8

# Установка зависимостей GDAL
RUN apt-get update \
    && apt-get install -y libgdal-dev gdal-bin

# Установка зависимости
COPY requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt

# Копирование кода в образ
COPY . /app

# Определение переменных среды
ENV DJANGO_SETTINGS_MODULE=geodata.settings

# Выполнение миграций и запуск сервера
RUN python geodata/manage.py migrate
CMD ["python", "geodata/manage.py", "runserver", "0.0.0.0:8000"]
