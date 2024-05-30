# Используем базовый образ с JDK 11 для компиляции и выполнения Java-приложений
FROM openjdk:11-slim

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем Java-файл в контейнер
COPY HelloWorld.java .

# Компилируем Java-файл
RUN javac HelloWorld.java

# Указываем команду для запуска Java-класса
CMD ["java", "HelloWorld"]


