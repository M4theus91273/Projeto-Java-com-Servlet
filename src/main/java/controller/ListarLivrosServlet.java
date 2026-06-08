package controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Livro;
import model.LivroDAO;

@WebServlet("/listarlivros")
public class ListarLivrosServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        LivroDAO livroDAO = new LivroDAO();

        List<Livro> livros = livroDAO.listarTodos();

        request.setAttribute("livros", livros);

        request.getRequestDispatcher("/listarlivros.jsp")
                .forward(request, response);
    }
}