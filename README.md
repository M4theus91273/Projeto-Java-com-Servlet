Sistema de Biblioteca Java Web

Projeto acadêmico desenvolvido utilizando Java Web, Servlet, JSP, JDBC e MySQL.

Tecnologias utilizadas
Java 17
Servlet
JSP
MySQL
JDBC
Apache Tomcat
Maven
MVC
Funcionalidades
Cadastro de livros
Validação de dados
Classificação de livros antigos e modernos
Identificação de autor desconhecido
Persistência em banco de dados MySQL
Arquitetura

O projeto utiliza o padrão MVC:

Model
Livro.java
LivroDAO.java
Conexao.java
View
index.jsp
resultado.jsp
listarlivros.jsp
Controller
CadastroLivroServlet.java
ListarLivrosServlet.java
Banco de Dados

Banco: biblioteca

Tabela: livros

Campos:

id
titulo
autor
ano_publicacao
classificacao
Autor

Matheus Moraes
