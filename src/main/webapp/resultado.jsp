<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.Livro" %>

<%
    Livro livro = (Livro) session.getAttribute("livro");

    if (livro == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado do Cadastro</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background: #f2f4f7;
            color: #222;
        }

        .container {
            width: 100%;
            max-width: 640px;
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

        h2 {
            color: #1f4e79;
            border-bottom: 1px solid #ddd;
            padding-bottom: 6px;
            margin-top: 24px;
        }

        p {
            font-size: 16px;
            line-height: 1.5;
        }

        .info {
            background: #f8fafc;
            border: 1px solid #ddd;
            border-radius: 6px;
            padding: 15px;
            margin-top: 16px;
        }

        .botoes {
            margin-top: 24px;
            display: flex;
            gap: 10px;
        }

        a {
            display: inline-block;
            padding: 10px 14px;
            border-radius: 5px;
            background: #1f4e79;
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            background: #163a5a;
        }

        .secundario {
            background: #555;
        }

        .secundario:hover {
            background: #333;
        }
    </style>
</head>
<body>

<div class="container">

    <h1>Resultado do Cadastro</h1>

    <div class="info">
        <h2>Dados do Livro</h2>

        <p><strong>Título:</strong> <%= livro.getTitulo() %></p>
        <p><strong>Autor:</strong> <%= livro.getAutor() %></p>
        <p><strong>Ano de Publicação:</strong> <%= livro.getAnoPublicacao() %></p>
    </div>

    <div class="info">
        <h2>Regras de Negócio</h2>

        <p><strong>Classificação:</strong> <%= livro.getClassificacaoAno() %></p>
        <p><strong>Validação do Título:</strong> <%= livro.getResultadoTitulo() %></p>
        <p><strong>Validação do Autor:</strong> <%= livro.getResultadoAutor() %></p>
        <p><strong>Validação do Ano:</strong> <%= livro.getResultadoAno() %></p>
    </div>

    <div class="botoes">
    <a href="index.jsp">Cadastrar Outro Livro</a>

    <a class="secundario" href="${pageContext.request.contextPath}/listarlivros">
        Ver Livros Cadastrados
    </a>
</div>

</body>
</html>