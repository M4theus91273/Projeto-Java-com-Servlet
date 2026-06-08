<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Biblioteca</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background: #f2f4f7;
            color: #222;
        }

        .container {
            width: 100%;
            max-width: 560px;
            margin: 60px auto;
            background: white;
            padding: 32px;
            border-radius: 8px;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.12);
        }

        h1 {
            margin-top: 0;
            text-align: center;
            color: #1f4e79;
        }

        .descricao {
            text-align: center;
            color: #555;
            margin-bottom: 26px;
        }

        label {
            display: block;
            margin-top: 16px;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 11px;
            margin-top: 6px;
            border: 1px solid #bbb;
            border-radius: 5px;
            font-size: 15px;
            box-sizing: border-box;
        }

        button {
            width: 100%;
            margin-top: 24px;
            padding: 12px;
            border: none;
            border-radius: 5px;
            background: #1f4e79;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        button:hover {
            background: #163a5a;
        }

        .link-lista {
            display: block;
            width: 100%;
            margin-top: 12px;
            padding: 12px;
            border-radius: 5px;
            background: #555;
            color: white;
            text-align: center;
            text-decoration: none;
            font-weight: bold;
            box-sizing: border-box;
        }

        .link-lista:hover {
            background: #333;
        }

        .erro {
            background: #ffecec;
            color: #8a1f1f;
            border: 1px solid #d99;
            padding: 12px;
            border-radius: 5px;
            margin-bottom: 18px;
        }
    </style>
</head>
<body>

<div class="container">

    <h1>Sistema de Biblioteca</h1>

    <p class="descricao">
        Cadastre um livro para salvar no banco de dados e vizualizar.
    </p>

    <%
        List<String> erros = (List<String>) request.getAttribute("erros");

        if (erros != null && !erros.isEmpty()) {
    %>
        <div class="erro">
            <strong>Corrija os campos abaixo:</strong>
            <ul>
                <% for (String erro : erros) { %>
                    <li><%= erro %></li>
                <% } %>
            </ul>
        </div>
    <%
        }
    %>

    <form action="${pageContext.request.contextPath}/cadastrar-livro" method="post">

        <label for="titulo">Título:</label>
        <input type="text" id="titulo" name="titulo" required minlength="3">

        <label for="autor">Autor:</label>
        <input type="text" id="autor" name="autor" required>

        <label for="anoPublicacao">Ano de Publicação:</label>
        <input type="number" id="anoPublicacao" name="anoPublicacao" required min="1450" max="2026">

        <button type="submit">Cadastrar Livro</button>

    </form>

    <a class="link-lista" href="${pageContext.request.contextPath}/listarlivros">
        Ver Livros Cadastrados
    </a>

</div>

</body>
</html>