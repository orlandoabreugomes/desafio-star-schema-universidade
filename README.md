# Desafio de Projeto: Criando um Star Schema para o contexto de uma universidade

ℹ️ **Nota:** Este projeto foi desenvolvido durante o curso “Modelagem de Dados com o Power BI” ministrado por [Juliana Mascarenhas](https://www.linkedin.com/in/juliana-mascarenhas-ds/) na [DIO](https://web.dio.me).

# Resumo do Trabalho de Modelagem Dimensional: Star Schema Focado em Professores

O objetivo deste trabalho é criar um **modelo dimensional** no formato **star schema** para realizar análises focadas em **professores**. A tabela fato deve capturar informações relacionadas aos professores, incluindo os cursos e disciplinas que ministram, bem como o departamento ao qual pertencem. Além disso, deve ser incluída uma tabela dimensão de datas para registrar eventos importantes, como a oferta de disciplinas ou cursos.

## Estrutura do Star Schema

### 1. Tabela Fato (`Fato_Professor`)
Centraliza a análise de dados sobre professores, registrando:
- ID do professor
- ID do curso ministrado
- ID do departamento
- ID da disciplina ministrada
- Data relacionada à oferta da disciplina ou curso
- Carga horária e número de cursos ministrados pelo professor

### 2. Tabelas Dimensão
- **`Dim_Professor`**: Detalhes dos professores (nome, formação, etc.).
- **`Dim_Curso`**: Informação sobre os cursos que os professores ministram.
- **`Dim_Departamento`**: Dados sobre os departamentos aos quais os professores estão associados.
- **`Dim_Data`**: Contém a granularidade das datas (dia, mês, ano, etc.) para análise temporal.
- **`dm_disciplina`**: Armazena detalhes sobre as disciplinas ministradas, incluindo pré-requisitos, que são incorporados como uma lista simples de IDs na própria tabela, mantendo a desnormalização.

## Considerações:
- O **star schema** é mantido sem a criação de tabelas de relacionamento adicionais, preservando o modelo simples e eficiente para consultas.


![Print do Star Schema](https://github.com/orlandoabreugomes/desafio-star-schema-universidade/blob/main/star_schema_universidade.png)

📒[Arquivo utilizado para criar o schema no MySQL Workbench (universidade.sql): ](https://github.com/orlandoabreugomes/desafio-star-schema-universidade/blob/main/schema_universidade.sql)

## 🖥️ Tecnologias utilizadas no Projeto:

* [Power BI](https://www.microsoft.com/pt-br/power-platform/products/power-bi)
* [MySQL Workbench](https://www.mysql.com/products/workbench/)


## 🙍🏽 Profissional
Orlando Gomes
[GitHub](https://github.com/orlandoabreugomes) | [Linkedin](https://www.linkedin.com/in/orlandoabreugomes/) | [e-mail](mailto:gomes.oa@gmail.com)
