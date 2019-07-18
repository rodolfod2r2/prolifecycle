package br.com.prolifecycle.model.vo;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "comentario")
public class Comentario {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "comentario_id", columnDefinition = "integer", length = 11)
    private int id;

    @Column(name = "comentario_descricao", columnDefinition = "text")
    private String descricao;

    @Column(name = "comentario_dt")
    private Date data;

    @OneToOne
    @JoinColumn(name = "comentario_usuario", foreignKey = @ForeignKey(name = "fk_comentario_usuario"))
    private Usuario usuario;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
}
