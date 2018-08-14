package com.caiotf.maissaude;

/**
 * Created by caio on 11/09/17.
 */

public class Dados {

    private int codLoc;
    private int codEsp;
    private int codTipoLoc;
    private String nome;
    private String endereco;
    private String telefone;
    private String convenios;

    public int getCodLoc() {
        return codLoc;
    }

    public void setCodLoc(int codLoc) {
        this.codLoc = codLoc;
    }


    public int getCodEsp() {
        return codEsp;
    }

    public void setCodEsp(int codEsp) {
        this.codEsp = codEsp;
    }


    public int getCodTipoLoc() {
        return codTipoLoc;
    }

    public void setCodTipoLoc(int codTipoLoc) {
        this.codTipoLoc = codTipoLoc;
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

    public String getConvenios() {
        return convenios;
    }

    public void setConvenios(String convenios) {
        this.convenios = convenios;
    }
}
