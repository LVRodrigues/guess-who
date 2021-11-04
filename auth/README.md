# Auth

Autorizador de acesso aos serviços do aplicativo **Guess Who?**. Utiliza o Keycloak para gerenciar os usuários e seus perfis de acesso.

## Docker

O arquivo **Dockerfile** configura o keycloak para uso no sistema **Guess Who?**.

Para criar a imagem Docker para o projeto, execute:

```bash
docker build -f Dockerfile -t guess-who/auth .
```

Para executar a imagem com uma base de dados volátil:

```bash
docker run --rm -p 10000:8080/tcp -p 10443:8443/tcp guess-who/auth
```

Para executar a imagem com uma base de dados persistente:

```bash
docker run --name guess-who-auth -p 10000:8080 -p 10443:8443 guess-who/auth
docker start guess-who-auth
docker stop guess-who-auth
```

## Acessar o console de administração

* http://localhost:10000/
* https://localhost:10443/

São criados os usuários:

| Usuário      | Senha      | Role                               |
| ------------ | ---------- | ---------------------------------- |
| admin        | guess-pass | Administrador do Keycloak.         |
| system       | guess-pass | system                             |

## Configurações

Para reconfigurar o aplicativo de autorização, utilize o usuário **admin**. Após realizar as
configurações, deve-se realizar uma nova cópia de segurança e exportar o arquivo para reconstruir o container.

Para realizar a cópia de segurança, execute:

```bash
docker exec -it gues-who-auth /opt/jboss/keycloak/bin/standalone.sh \
-Djboss.socket.binding.port-offset=100 -Dkeycloak.migration.action=export \
-Dkeycloak.migration.provider=singleFile \
-Dkeycloak.migration.realmName=guess-who \
-Dkeycloak.migration.usersExportStrategy=REALM_FILE \
-Dkeycloak.migration.file=/tmp/guess-who-realm.json
```

Após a cópia de segurança, o arquivo **guess-who-realm.json** deve ser extraído.

```bash
docker cp guess-how-auth:/tmp/guess-who-realm.json .
```

Execute novamente a recriação do container para persistir as alterações.