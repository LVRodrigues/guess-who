FROM quay.io/keycloak/keycloak

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=guess-pass

COPY \
    guess-who-realm.json \
    /opt/keycloak/data/import/

EXPOSE 8080
EXPOSE 8443

ENTRYPOINT [ \
    "/opt/keycloak/bin/kc.sh", \
    "start-dev", \
    "--import-realm"]
