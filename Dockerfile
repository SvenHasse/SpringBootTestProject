FROM eclipse-temurin:17-jre

EXPOSE 8080


RUN chgrp -R 0 /opt && \
    chmod -R g=u /opt

COPY --from=0 "/SpringBootTestProject/target/myapp.jar" app.jar
ENTRYPOINT [ "java", "-Dspring.profiles.active=default", "-jar", "/app.jar"]