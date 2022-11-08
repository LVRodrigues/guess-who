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

## Ambiente de Desenvolvimento

As ferramentas para desenvolvimento utilizadas nesse projeto são:

| **Ferramenta** | **Versão**  |
| -------------- | ----------- |
| Java           | 17          |
| Maven          | 3.8.3       |
| Keycloak       | 15.0.2      |
| PostgreSQL     | 14          |
| Docker         | 20.10.7     |

## Organização

| **Diretório** | **Descrição**                                                             |
| ------------- | ------------------------------------------------------------------------- |
| **docs**      | Documentação do projeto.                                                  |
| **database**  | Scripts para criação e gerenciamento do banco de dados.                   |
| **auth**      | Módulode autorização do aplicativo para desenvolvimento.                  |
| **java**      | Aplicativo modular com Java e SpringBoot para gerenciamento dos serviços. |

