package br.com.prolifecycle.model.vo;

import javax.persistence.*;

@Entity
@Table(name = "arquivo")
public class Arquivo {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "arquivo_id", columnDefinition = "integer", length = 11)
    private int id;

    @Column(name = "arquivo_path", length = 150)
    private String path;

    @Column(name = "arquivo_nome", length = 150)
    private String nome;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
