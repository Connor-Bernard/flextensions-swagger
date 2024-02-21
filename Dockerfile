FROM swaggerapi/swagger-ui:latest
COPY swagger.json /opt/swagger/
ENV SWAGGER_JSON="/opt/swagger/swagger.json"
EXPOSE 8080
