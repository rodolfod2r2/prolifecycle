package br.com.prolifecycle.model.vo;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;

@Entity
@Table(name = "projeto")
public class Projeto {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "projeto_id", columnDefinition = "integer", length = 11)
    private int id;

    @Column(name = "projeto_nome", length = 150)
    private String nome;

    @Column(name = "projeto_descricao", columnDefinition = "text")
    private String descricao;

    @Column(name = "projeto_dtini")
    private Date dtIni;

    @Column(name = "projeto_dtfim")
    private Date dtFim;

    @OneToOne
    @JoinColumn(name = "projeto_gerente", referencedColumnName = "usuario_id", foreignKey = @ForeignKey(name = "fk_projeto_usuario"))
    private Usuario gerente;

    @OneToOne
    @JoinColumn(name = "projeto_arquivo", referencedColumnName = "arquivo_id", foreignKey = @ForeignKey(name = "fk_projeto_arquivo"))
    private Arquivo arquivo;

    @ManyToMany
    @JoinTable (
            name = "projeto_equipes",
            joinColumns = @JoinColumn(
                    name = "projeto_id", referencedColumnName = "projeto_id", foreignKey = @ForeignKey(name = "fk_projeto_equipe")),
            inverseJoinColumns = @JoinColumn(
                    name = "equipe_id", referencedColumnName = "equipe_id", foreignKey = @ForeignKey(name = "fk_equipe_projeto"))
    )
    private Collection<Equipe> equipes;

    @ManyToMany
    @JoinTable (
            name = "projeto_tarefas",
            joinColumns = @JoinColumn(
                    name = "projeto_id", referencedColumnName = "projeto_id", foreignKey = @ForeignKey(name = "fk_projeto_tarefa")),
            inverseJoinColumns = @JoinColumn(
                    name = "tarefa_id", referencedColumnName = "tarefa_id", foreignKey = @ForeignKey(name = "fk_tarefa_projeto"))
    )
    private Collection<Tarefa> tarefas;

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

    public Date getDtIni() {
        return dtIni;
    }

    public void setDtIni(Date dtIni) {
        this.dtIni = dtIni;
    }

    public Date getDtFim() {
        return dtFim;
    }

    public void setDtFim(Date dtFim) {
        this.dtFim = dtFim;
    }

    public Usuario getGerente() {
        return gerente;
    }

    public void setGerente(Usuario gerente) {
        this.gerente = gerente;
    }

    public Arquivo getArquivo() {
        return arquivo;
    }

    public void setArquivo(Arquivo arquivo) {
        this.arquivo = arquivo;
    }

    public Collection<Equipe> getEquipes() {
        return equipes;
    }

    public void setEquipes(Collection<Equipe> equipes) {
        this.equipes = equipes;
    }

    public Collection<Tarefa> getTarefas() {
        return tarefas;
    }

    public void setTarefas(Collection<Tarefa> tarefas) {
        this.tarefas = tarefas;
    }
}
