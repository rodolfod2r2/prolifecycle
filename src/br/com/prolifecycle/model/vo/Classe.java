package br.com.prolifecycle.model.vo;

import javax.persistence.*;

@Entity
@Table(name = "classe")
public class Classe {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "classe_id", columnDefinition = "integer", length = 11)
    private int id;

    @Column(name = "classe_nome", nullable = false, length = 50)
    private String nome;

    @Column(name = "classe_descricao", nullable = false, columnDefinition = "text")
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
