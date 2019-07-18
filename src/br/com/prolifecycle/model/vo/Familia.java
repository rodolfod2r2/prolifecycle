package br.com.prolifecycle.model.vo;

import javax.persistence.*;

@Entity
@Table(name = "familia")
public class Familia {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "familia_id", columnDefinition = "integer", length = 11)
    private int id;

    @Column(name = "familia_nome", nullable = true, length = 50)
    private String nome;

    @Column(name = "familia_descricao", nullable = true, columnDefinition = "text")
    private String descricao;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
}
