Library Management System - Java

Aplicação web desenvolvida em Java utilizando Servlet, JSP, JDBC e MySQL, seguindo o padrão de arquitetura MVC (Model-View-Controller).

Funcionalidades
Cadastro de livros
Listagem de livros cadastrados
Validação de dados de entrada
Persistência em banco de dados MySQL
Classificação automática de livros
Tecnologias Utilizadas
Java 17
Jakarta Servlet
JSP
JDBC
MySQL
Apache Tomcat
Maven
Arquitetura

O projeto foi desenvolvido utilizando o padrão MVC (Model-View-Controller).

Model
Livro
LivroDAO
Conexao
RegraLivro
View
index.jsp
resultado.jsp
listarlivros.jsp
Controller
CadastroLivroServlet
ListarLivrosServlet
Estrutura do Projeto
src/main/java
├── controller
├── database
└── model

src/main/webapp
├── index.jsp
├── resultado.jsp
└── listarlivros.jsp
Banco de Dados

Banco de dados utilizado:

biblioteca

Tabela principal:

livros

Campos:

id
titulo
autor
ano_publicacao
classificacao
Autor

Matheus Moraes
