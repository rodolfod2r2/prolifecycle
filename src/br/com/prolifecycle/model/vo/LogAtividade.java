package br.com.prolifecycle.model.vo;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "logatividade")
public class LogAtividade {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "logatividade_id", columnDefinition = "integer", length = 11)
    private int id;

    @OneToOne
    @JoinColumn (name = "logatividade_usuario", foreignKey = @ForeignKey(name = "fk_logatividade_usuario"))
    private Usuario usuario;

    @Column(name = "logatividade_descricao", columnDefinition = "text")
    private String descricao;

    @Column(name = "logatividade_dt")
    private Date data;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }
}
