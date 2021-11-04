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
docker run --rm -p 10000:8080/tcp -p10443:8443/tcp guess-who/auth
```

Para executar a imagem com uma base de dados persistente:

```bash
docker run --name guess-who-auth -p 10000:8080 -p 10443:8443 guess-who/auth
docker start guess-who-auth
docker stop guess-who-auth
```

## Acessar o console de administração

http://localhost:10000/

São criados os usuários:

| Usuário      | Senha      | Perfil                             |
| ------------ | ---------- | ---------------------------------- |
| admin        | guess-pass | Administrador.                     |
| guess-system | guess-pass | Sistema e processos automatizados. |

