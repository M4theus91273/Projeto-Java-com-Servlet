package controller;

import java.io.IOException;
import java.time.Year;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Livro;
import model.LivroDAO;

@WebServlet("/cadastrar-livro")
public class CadastroLivroServlet extends HttpServlet {

    private static final int ANO_LIVRO_ANTIGO = 2000;

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String anoTexto =
                request.getParameter("anoPublicacao");

        List<String> erros =
                validarCampos(titulo, autor, anoTexto);

        Integer anoPublicacao =
                converterAno(anoTexto);

        if (anoPublicacao == null) {

            erros.add(
              "O ano de publicação deve ser um número válido.");
        }

        if (!erros.isEmpty()) {

            request.setAttribute("erros", erros);

            request.getRequestDispatcher("/index.jsp")
                    .forward(request, response);

            return;
        }

        Livro livro =
                new Livro(
                        titulo.trim(),
                        autor.trim(),
                        anoPublicacao
                );

       aplicarRegrasDeNegocio(livro);

LivroDAO livroDAO = new LivroDAO();

livroDAO.salvar(livro);

System.out.println("CHEGOU NO DAO");

HttpSession session =
        request.getSession();

        session.setAttribute("livro", livro);

        request.getRequestDispatcher("/resultado.jsp")
                .forward(request, response);
    }

    private List<String> validarCampos(
            String titulo,
            String autor,
            String anoTexto) {

        List<String> erros =
                new ArrayList<>();

        if (titulo == null ||
                titulo.trim().isEmpty()) {

            erros.add(
              "O título do livro é obrigatório.");
        }

        if (autor == null ||
                autor.trim().isEmpty()) {

            erros.add(
              "O autor do livro é obrigatório.");
        }

        if (anoTexto == null ||
                anoTexto.trim().isEmpty()) {

            erros.add(
              "O ano de publicação é obrigatório.");
        }

        return erros;
    }

    private Integer converterAno(String anoTexto) {

        try {

            return Integer.parseInt(
                    anoTexto.trim());

        } catch (NumberFormatException |
                 NullPointerException erro) {

            return null;
        }
    }

    private void aplicarRegrasDeNegocio(
            Livro livro) {

        int anoAtual =
                Year.now().getValue();

        if (livro.getTitulo().length() >= 3) {

            livro.setResultadoTitulo(
              "Título válido.");

        } else {

            livro.setResultadoTitulo(
              "Título inválido.");
        }

        if (livro.getAnoPublicacao() >= 1450
                &&
                livro.getAnoPublicacao() <= anoAtual) {

            livro.setResultadoAno(
              "Ano válido.");

        } else {

            livro.setResultadoAno(
              "Ano inválido.");
        }

        if (livro.getAnoPublicacao()
                < ANO_LIVRO_ANTIGO) {

            livro.setClassificacaoAno(
              "Livro antigo.");

        } else {

            livro.setClassificacaoAno(
              "Livro moderno.");
        }

        if (livro.getAutor()
                .equalsIgnoreCase("desconhecido")) {

            livro.setResultadoAutor(
              "Autor desconhecido.");

        } else {

            livro.setResultadoAutor(
              "Autor conhecido.");
        }
    }
}