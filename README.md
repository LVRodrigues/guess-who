# Guess Who?

Aplicativo de teste e conhecimento sobre personagens bíblicos.

Não lembro-me quem me forneceu o arquivo original, mas fui presenteado certa vez com um documento contendo várias cartas com perguntas sobre personagens bíblicos. Estou utilizando este arquivo como base para o banco de dados.

O objetivo desse exercício é utilizar as boas práticas de desenvolvimento. Para conferir a aderência das boas práticas, utilizam-se ferramentas de verificação de código, como:

| **Ferramenta** | **Objetivo**                                                                                           |
| -------------- | ------------------------------------------------------------------------------------------------------ |
| **SpotBugs**   | Utiliza análise estática do código para procurar por possíveis problemas de implementação.             |
| **PMD**        | Analizador de código fonte que verifica as boas práticas de desenvolvimento e métricas de codificação. |
| **CPD**        | Verifica a existência de códigos duplicados.                                                           |
| **Checkstyle** | Analisa a sintexe e padrão de codificação para manter a organização do código.                         |

Também foi escolhido o **Spring Boot** como motor para os serviços considerando um sistema modular e com reaprovietamento de pacotes entre os módulos.

## Banco de Dados

O projeto utiliza um banco de dados configurado em outro repositório [guess-who-database](https://github.com/LVRodrigues/guess-who-database.git). Para manter o módulo de banco de dados sincronizado após clonar o projeto, execute os comandos:

```bash
> git remote add -f database https://github.com/LVRodrigues/guess-who-database.git
> git pull -s subtree database main
```

## Ambiente de Desenvolvimento

As ferramentas para desenvolvimento utilizadas nesse projeto são:

| **Ferramenta** | **Versão**  |
| -------------- | ----------- |
| Java           | 17          |
| Maven          | 3.8.3       |
| Keycloak       | 20          |
| PostgreSQL     | 14          |
| Docker         | 20.10.7     |
| Angular        | 15          |

> Para executar os módulos em containers Docker, crie uma entrada no arquivo de hosts para os nomes e endereços:
>
> ```bash
> 127.0.0.1	guess-auth 
> 127.0.0.1	guess-database 
> 127.0.0.1	guess-admin-server 
> 127.0.0.1	guess-admin-client
> ```

## Organização

| **Diretório** | **Descrição**                                                                |
| ------------- | -----------------------------------------------------------------------------|
| **docs**      | Documentação do projeto.                                                     |
| **database**  | Scripts para criação e gerenciamento do banco de dados.                      |
| **auth**      | Módulode autorização do aplicativo para desenvolvimento.                     |
| **java**      | Aplicativos modulares com Java e SpringBoot para gerenciamento dos serviços. |
| **angular**   | Aplicativos clientes para consumir os serviços criados com Java.             |

## Construção

Na raíz do projeto, execute os comandos:

```bash
mvn -f java/pom.xml clean install
docker-compose up -d --build
```

Endereços de uso:

| **Serviço**  | **Endereço**                     |
|--------------|----------------------------------|
| Keycloak     | http://localhost:8080/           |
| Admin Server | http://localhost:5001/           |
| Admin Client | http://localhost:8081/           |

## Token de Acesso

```bash
curl -X POST \
  'http://guess-auth:8080/realms/guess-who/protocol/openid-connect/token' \
  --header 'Content-Type: application/x-www-form-urlencoded' \
  --data-urlencode 'grant_type=password' \
  --data-urlencode 'username=******' \
  --data-urlencode 'password=******' \
  --data-urlencode 'client_id=guess-who-game' \
  --data-urlencode 'client_secret=7fcaf3a7-b1ab-4558-9a4a-004ad800d41a'
```
# Interface Administrativa
![Guess Who Admin](./snapshots/guess-who-admin-home.png "Interface de administração dos dados de personagens bíblios.")