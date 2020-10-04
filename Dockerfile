FROM jboss/keycloak:10.0.2
COPY elsa-realm.json /tmp/elsa-realm.json
ENV KEYCLOAK_IMPORT=/tmp/elsa-realm.json
COPY ./themes /opt/jboss/keycloak/themes
ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0", "-Dkeycloak.profile.feature.upload_scripts=enabled"]
