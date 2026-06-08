package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.Conexao;

public class LivroDAO {

    public void salvar(Livro livro) {

        String sql =
                "INSERT INTO livros " +
                "(titulo, autor, ano_publicacao, classificacao) " +
                "VALUES (?, ?, ?, ?)";

        try (
                Connection conexao = Conexao.conectar();
                PreparedStatement statement = conexao.prepareStatement(sql)
        ) {

            statement.setString(1, livro.getTitulo());
            statement.setString(2, livro.getAutor());
            statement.setInt(3, livro.getAnoPublicacao());
            statement.setString(4, livro.getClassificacaoAno());

            int linhas = statement.executeUpdate();

            System.out.println("Livro salvo no banco!");
            System.out.println("Linhas inseridas: " + linhas);

        } catch (SQLException erro) {
            System.out.println("ERRO NO BANCO:");
            erro.printStackTrace();
        }
    }

    public List<Livro> listarTodos() {

        List<Livro> livros = new ArrayList<>();

        String sql =
                "SELECT titulo, autor, ano_publicacao, classificacao " +
                "FROM livros " +
                "ORDER BY id DESC";

        try (
                Connection conexao = Conexao.conectar();
                PreparedStatement statement = conexao.prepareStatement(sql);
                ResultSet resultado = statement.executeQuery()
        ) {

            while (resultado.next()) {

                Livro livro = new Livro();

                livro.setTitulo(resultado.getString("titulo"));
                livro.setAutor(resultado.getString("autor"));
                livro.setAnoPublicacao(resultado.getInt("ano_publicacao"));
                livro.setClassificacaoAno(resultado.getString("classificacao"));

                livros.add(livro);
            }

        } catch (SQLException erro) {
            System.out.println("ERRO AO LISTAR LIVROS:");
            erro.printStackTrace();
        }

        return livros;
    }
}