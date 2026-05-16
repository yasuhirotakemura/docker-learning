FROM gradle:7-jdk17

WORKDIR /api
COPY . .

# gradlew に実行権限を付与
RUN chmod +x gradlew

CMD ["./gradlew", "bootRun"]