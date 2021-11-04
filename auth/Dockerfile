FROM jboss/keycloak

USER root:root
COPY guess-who-realm.json /tmp/

USER jboss:jboss
ENV KEYCLOAK_USER=admin
ENV KEYCLOAK_PASSWORD=guess-pass
ENV KEYCLOAK_IMPORT=/tmp/guess-who-realm.json

