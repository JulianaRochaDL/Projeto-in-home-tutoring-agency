
# In-Home Tutoring Agency

## Sobre o projeto

O **In-Home Tutoring Agency** é um projeto de banco de dados desenvolvido para o gerenciamento de uma agência de aulas particulares domiciliares. O projeto foi desenvolvido utilizando **MySQL 8.0** e **MySQL Workbench**, com o objetivo de aplicar conceitos de modelagem de banco de dados, relacionamentos entre tabelas, integridade dos dados e consultas SQL. O sistema contempla informações relacionadas a **alunos, responsáveis, professores, disciplinas, aulas e localização**, permitindo o armazenamento e a análise dos dados envolvidos na operação da agência.

Foram utilizados dados fictícios para representar situações próximas às encontradas em uma agência de aulas particulares domiciliares.

---

## Contexto do projeto

Uma agência de aulas particulares domiciliares atua como intermediadora entre **alunos que precisam de acompanhamento educacional** e **professores particulares** disponíveis para realizar as aulas. Nesse modelo, a agência é responsável por organizar informações dos alunos, responsáveis e professores, além de realizar o gerenciamento das disciplinas, séries, horários e aulas.

Um aspecto importante nesse tipo de serviço é a **proximidade geográfica entre professor e aluno**. Como as aulas são realizadas presencialmente na residência do aluno, a localização pode influenciar diretamente na escolha de um professor adequado. Por esse motivo, o banco de dados armazena informações relacionadas à localização, permitindo realizar consultas que considerem critérios como **cidade e zona**, além da compatibilidade entre professor, disciplina e série. Dessa forma, o banco pode auxiliar a agência na identificação de professores que atendam às necessidades acadêmicas dos alunos e que estejam geograficamente próximos, contribuindo para uma organização mais eficiente das aulas.

Além do gerenciamento das aulas, o projeto também contempla informações financeiras, permitindo analisar valores recebidos pela agência e os respectivos repasses aos professores.

---

## Objetivos

O projeto tem como principais objetivos:

- Modelar um banco de dados para uma agência de aulas particulares domiciliares;
- Armazenar informações de alunos, responsáveis, professores e disciplinas;
- Representar os relacionamentos entre professores, disciplinas e séries;
- Gerenciar aulas fixas e esporádicas;
- Armazenar informações de localização;
- Permitir consultas relacionadas à proximidade geográfica entre professores e alunos;
- Analisar a quantidade de aulas realizadas;
- Analisar informações financeiras da agência e dos professores;
- Aplicar diferentes recursos da linguagem SQL.

---

## Tecnologias utilizadas

- **MySQL 8.0** — sistema de gerenciamento de banco de dados utilizado para criação, armazenamento e manipulação dos dados.
- **MySQL Workbench** — ferramenta utilizada para desenvolvimento, modelagem, execução e gerenciamento do banco de dados.

---

## Estrutura do projeto

O projeto está dividido nas seguintes etapas:

1. schema
2. inserts
3. procedures
4. events
5. queries

---

## Queries e perguntas de negócio utilizadas

As consultas SQL foram desenvolvidas a partir de perguntas de negócio relacionadas ao funcionamento da agência.

- Quantos filhos cada responsável tem matriculados?
- Qual é a disciplina mais procurada?
- Quais professores ensinam matemática e moram na mesma cidade e mesma zona que o aluno 1, considerando que sejam professores que lecionam para a mesma série que o aluno em questão?
- Quantas aulas cada aluno realizou em maio, quanto cada um pagou à agência e qual foi sua participação percentual na receita total do mês?
- Quais alunos tem aula de física?
- Sabendo que o repasse do professor é 80% do valor recebido pela agência, quanto foi o faturamento de cada professor no mês de abril?
- Qual aluno realizou mais aulas em cada disciplina?
