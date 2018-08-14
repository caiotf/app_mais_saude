package com.caiotf.maissaude.model;

/**
 * Created by caio on 11/09/17.
 */

public class Dados {

    private int codLoc;
    private String nome;
    private String endereco;
    private String telefone;
    private int codEsp;
    private int codTipo;
    private String convenios;

    public Dados(int codLoc, String nome, String endereco, String telefone, int codEsp, int codTipo, String convenios) {

        this.codLoc = codLoc;
        this.nome = nome;
        this.endereco = endereco;
        this.telefone = telefone;
        this.codEsp = codEsp;
        this.codTipo = codTipo;
        this.convenios = convenios;
    }

    public int getCodLoc() {
        return codLoc;
    }

    public void setCodLoc(int codLoc) {
        this.codLoc = codLoc;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public int getCodEsp() {
        return codEsp;
    }

    public void setCodEsp(int codEsp) {
        this.codEsp = codEsp;
    }

    public int getCodTipo() {
        return codTipo;
    }

    public void setCodTipo(int codTipo) {
        this.codTipo = codTipo;
    }

    public String getConvenios() {
        return convenios;
    }

    public void setConvenios(String convenios) {
        this.convenios = convenios;
    }
}
