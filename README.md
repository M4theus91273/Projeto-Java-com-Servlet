# Library Management System - Java

Web application developed in Java using Servlet, JSP, JDBC and MySQL, following the MVC (Model-View-Controller) architecture pattern.

## Features

* Book registration
* Book listing
* Input validation
* MySQL database persistence
* Automatic book classification

## Technologies Used

* Java 17
* Jakarta Servlet
* JSP
* JDBC
* MySQL
* Apache Tomcat
* Maven

## Architecture

The project follows the MVC (Model-View-Controller) pattern.

### Model

* Livro
* LivroDAO
* Conexao
* RegraLivro

### View

* index.jsp
* resultado.jsp
* listarlivros.jsp

### Controller

* CadastroLivroServlet
* ListarLivrosServlet

## Project Structure

```text
src/main/java
├── controller
├── database
└── model

src/main/webapp
├── index.jsp
├── resultado.jsp
└── listarlivros.jsp
```

## Database

Database:

```sql
biblioteca
```

Main table:

```sql
livros
```

Fields:

* id
* titulo
* autor
* ano_publicacao
* classificacao

## Author

Matheus Moraes
