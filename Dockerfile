# Используем базовый образ с JDK 11 для компиляции и выполнения Java-приложений
FROM openjdk:11-slim


WORKDIR /app


COPY HelloWorld.java .


RUN javac HelloWorld.java


CMD ["java", "HelloWorld"]


