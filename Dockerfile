FROM jboss/keycloak:10.0.2
COPY elsa-realm.json /tmp/elsa-realm.json
ENV KEYCLOAK_IMPORT=/tmp/elsa-realm.json
COPY ./themes /opt/jboss/keycloak/themes
# Disable ANSI colors
RUN sed -i 's/<named-formatter name="COLOR-PATTERN"\/>/<named-formatter name="PATTERN"\/>/g' /opt/jboss/keycloak/standalone/configuration/standalone.xml
RUN sed -i 's/<named-formatter name="COLOR-PATTERN"\/>/<named-formatter name="PATTERN"\/>/g' /opt/jboss/keycloak/standalone/configuration/standalone-ha.xml
ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0", "-Dkeycloak.profile.feature.upload_scripts=enabled"]
