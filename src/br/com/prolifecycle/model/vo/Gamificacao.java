package br.com.prolifecycle.model.vo;

import javax.persistence.*;

@Entity
@Table(name = "gamificacao")
public class Gamificacao {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "gamificacao_id", columnDefinition = "integer", length = 11)
    private int id;

    @Column(name = "gamificacao_nome", length = 150)
    private String nome;

    @Column(name = "gamificacao_descricao", columnDefinition = "text")
    private String descricao;

    @Column(name = "gamificacao_pontos", columnDefinition = "integer", length = 11)
    private int pontos;

    @OneToOne
    @JoinColumn(name = "gamificacao_arquivo", referencedColumnName = "arquivo_id", foreignKey = @ForeignKey(name = "fk_gamificacao_arquivo"))
    private Arquivo arquivo;

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

    public int getPontos() {
        return pontos;
    }

    public void setPontos(int pontos) {
        this.pontos = pontos;
    }

    public Arquivo getArquivo() {
        return arquivo;
    }

    public void setArquivo(Arquivo arquivo) {
        this.arquivo = arquivo;
    }
}
