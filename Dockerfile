FROM eclipse-temurin:21-jdk AS build
WORKDIR /src
COPY src ./src
COPY config ./config
RUN mkdir -p /out && javac -d /out src/main/java/com/harbor/App.java

FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /out /app/out
COPY --from=build /src/config /app/config
EXPOSE 8080
CMD ["java", "-cp", "/app/out", "com.harbor.App"]
