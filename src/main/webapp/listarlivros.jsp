<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Livro" %>

<%
    List<Livro> livros = (List<Livro>) request.getAttribute("livros");
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Livros Cadastrados</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background: #f2f4f7;
            color: #222;
        }

        .container {
            width: 90%;
            max-width: 900px;
            margin: 60px auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.12);
        }

        h1 {
            margin-top: 0;
            text-align: center;
            color: #1f4e79;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 24px;
        }

        th {
            background: #1f4e79;
            color: white;
            padding: 12px;
            text-align: left;
        }

        td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
        }

        tr:nth-child(even) {
            background: #f8fafc;
        }

        .vazio {
            text-align: center;
            margin-top: 30px;
            color: #666;
        }

        .botao {
            display: inline-block;
            margin-top: 24px;
            padding: 10px 14px;
            border-radius: 5px;
            background: #1f4e79;
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        .botao:hover {
            background: #163a5a;
        }
    </style>
</head>
<body>

<div class="container">

    <h1>Livros Cadastrados</h1>

    <% if (livros == null || livros.isEmpty()) { %>

        <p class="vazio">Nenhum livro cadastrado até o momento.</p>

    <% } else { %>

        <table>
            <thead>
                <tr>
                    <th>Título</th>
                    <th>Autor</th>
                    <th>Ano</th>
                    <th>Classificação</th>
                </tr>
            </thead>

            <tbody>
                <% for (Livro livro : livros) { %>
                    <tr>
                        <td><%= livro.getTitulo() %></td>
                        <td><%= livro.getAutor() %></td>
                        <td><%= livro.getAnoPublicacao() %></td>
                        <td><%= livro.getClassificacaoAno() %></td>
                    </tr>
                <% } %>
            </tbody>
        </table>

    <% } %>

    <a class="botao" href="index.jsp">Voltar para o Cadastro</a>

</div>

</body>
</html>
