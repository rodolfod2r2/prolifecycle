package br.com.prolifecycle.model.vo;

import javax.persistence.*;

@Entity
@Table(name = "habilidade")
public class Habilidade {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "habilidade_id", columnDefinition = "integer", length = 11)
    private int id;

    @Column(name = "habilidade_nome", nullable = false, length = 150)
    private String nome;

    @Column(name = "habilidade_level", nullable = false, length = 3)
    private int level;

    @OneToOne
    @JoinColumn (name = "habilidade_usuario", foreignKey = @ForeignKey(name = "fk_habilidade_usuario"))
    private Usuario usuario;

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

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
}
