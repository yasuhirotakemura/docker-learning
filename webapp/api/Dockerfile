FROM gradle:7-jdk17-jammy AS base

CMD ["bash"]

FROM base AS test-and-build
COPY . /workspace
WORKDIR /workspace
RUN ./gradlew build

FROM eclipse-temurin:17-jdk AS production
COPY --from=test-and-build /workspace/build/libs/api-0.0.1-SNAPSHOT.jar ./api.jar
CMD ["java", "-jar", "api.jar"]