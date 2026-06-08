package model;

public class RegraLivro {

    public static String classificarLivro(int ano) {

        if (ano < 2000) {
            return "Livro antigo";
        } else {
            return "Livro moderno";
        }
    }

    public static String validarTitulo(String titulo) {

        if (titulo == null || titulo.length() < 3) {
            return "Título inválido";
        }

        return "Título válido";
    }

    public static String validarAutor(String autor) {

        if (autor.equalsIgnoreCase("desconhecido")) {
            return "Autor desconhecido";
        }

        return "Autor conhecido";
    }
}