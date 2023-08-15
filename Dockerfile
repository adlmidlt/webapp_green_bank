# Создаем окружение.
FROM golang:latest

# Сопровождающий образ докера.
LABEL maintainer="adlmidl@yandex.ru"

# Задаем текущую рабочую директорию.
WORKDIR /usr/src/app

# Копируем в контейнер файлы и папки.
COPY . .

# Выполняем команду для подгрузки всех зависимостей в проекте.
RUN go mod download

# Копируем в контейнер файлы и папки.
COPY . .

# Выполняем команду для сборки проекта.
RUN go build -o web_green_bank ./cmd/app/main.go

# Выполнить команду, когда контейнер будет запущен.
CMD ["./web_green_bank"]
