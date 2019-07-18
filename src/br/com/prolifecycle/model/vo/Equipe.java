package br.com.prolifecycle.model.vo;

import javax.persistence.*;
import java.util.Collection;

@Entity
@Table(name = "equipe")
public class Equipe {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "equipe_id", columnDefinition = "integer", length = 11)
    private int id;

    @Column(name = "equipe_nome", nullable = false, length = 150)
    private String nome;

    @OneToOne
    @JoinColumn(name = "equipe_arquivo", referencedColumnName = "arquivo_id", foreignKey = @ForeignKey(name = "fk_equipe_arquivo"))
    private Arquivo arquivo;

    @ManyToMany
    @JoinTable (name = "equipe_usuarios",
            joinColumns = @JoinColumn(
                    name = "equipe_id", referencedColumnName = "equipe_id", foreignKey = @ForeignKey(name = "fk_equipe_usuario")),
            inverseJoinColumns = @JoinColumn(
                    name = "usuario_id", referencedColumnName = "usuario_id", foreignKey = @ForeignKey(name = "fk_usuario_equipe"))
    )
    private Collection<Usuario> usuarios;

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

    public Arquivo getArquivo() {
        return arquivo;
    }

    public void setArquivo(Arquivo arquivo) {
        this.arquivo = arquivo;
    }

    public Collection<Usuario> getUsuarios() {
        return usuarios;
    }

    public void setUsuarios(Collection<Usuario> usuarios) {
        this.usuarios = usuarios;
    }
}
