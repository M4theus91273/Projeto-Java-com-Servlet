package model;

import java.io.Serializable;

public class Livro implements Serializable {
    private String titulo;
    private String autor;
    private int anoPublicacao;
    private String classificacaoAno;
    private String resultadoTitulo;
    private String resultadoAno;
    private String resultadoAutor;

    public Livro() {
    }

    public Livro(String titulo, String autor, int anoPublicacao) {
        this.titulo = titulo;
        this.autor = autor;
        this.anoPublicacao = anoPublicacao;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getAnoPublicacao() {
        return anoPublicacao;
    }

    public void setAnoPublicacao(int anoPublicacao) {
        this.anoPublicacao = anoPublicacao;
    }

    public String getClassificacaoAno() {
        return classificacaoAno;
    }

    public void setClassificacaoAno(String classificacaoAno) {
        this.classificacaoAno = classificacaoAno;
    }

    public String getResultadoTitulo() {
        return resultadoTitulo;
    }

    public void setResultadoTitulo(String resultadoTitulo) {
        this.resultadoTitulo = resultadoTitulo;
    }

    public String getResultadoAno() {
        return resultadoAno;
    }

    public void setResultadoAno(String resultadoAno) {
        this.resultadoAno = resultadoAno;
    }

    public String getResultadoAutor() {
        return resultadoAutor;
    }

    public void setResultadoAutor(String resultadoAutor) {
        this.resultadoAutor = resultadoAutor;
    }
}