package br.com.prolifecycle.model.vo;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;

@Entity
@Table(name = "tarefa")
public class Tarefa {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "tarefa_id", columnDefinition = "integer", length = 11)
    private int id;

    @Column(name = "tarefa_nome", nullable = false, length = 150)
    private String nome;

    @Column(name = "tarefa_descricao", nullable = false, columnDefinition = "text")
    private String descricao;

    @Column(name = "tarefa_dtini")
    private Date dtIni;

    @Column(name = "tarefa_dtfim")
    private Date dtFim;

    @Column(name = "tarefa_prioridade")
    private int prioridade;

    @Column(name = "tarefa_entregue")
    private int entregue;

    @Column(name = "tarefa_revisada")
    private int revisada;

    @Column(name = "tarefa_concluida")
    private int concluida;

    @OneToOne
    @JoinColumn (name = "tarefa_usuario", foreignKey = @ForeignKey(name = "fk_tarefa_usuario"))
    private Usuario usuario;

    @ManyToMany
    @JoinTable(
            name = "tarefa_gamificacoes",
            joinColumns = @JoinColumn(
                    name = "tarefa_id", referencedColumnName = "tarefa_id", foreignKey = @ForeignKey(name = "fk_tarefa_gamificacao")),
            inverseJoinColumns = @JoinColumn(
                    name = "gamificacao_id", referencedColumnName = "gamificacao_id", foreignKey = @ForeignKey(name = "fk_gamificacao_tarefa"))
    )
    private Collection<Gamificacao> gamificacoes;

    @ManyToMany
    @JoinTable(
            name = "tarefa_arquivos",
            joinColumns = @JoinColumn(
                    name = "tarefa_id", referencedColumnName = "tarefa_id", foreignKey = @ForeignKey(name = "fk_tarefa_arquivo")),
            inverseJoinColumns = @JoinColumn(
                    name = "arquivo_id", referencedColumnName = "arquivo_id", foreignKey = @ForeignKey(name = "fk_arquivo_tarefa"))
    )
    private Collection<Arquivo> arquivos;

    @ManyToMany
    @JoinTable(
            name = "tarefa_comentarios",
            joinColumns = @JoinColumn(
                    name = "tarefa_id", referencedColumnName = "tarefa_id", foreignKey = @ForeignKey(name = "fk_tarefa_comentario")),
            inverseJoinColumns = @JoinColumn(
                    name = "comentario_id", referencedColumnName = "comentario_id", foreignKey = @ForeignKey(name = "fk_comentario_tarefa"))
    )
    private Collection<Comentario> comentarios;

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

    public int getPrioridade() {
        return prioridade;
    }

    public void setPrioridade(int prioridade) {
        this.prioridade = prioridade;
    }

    public int getEntregue() {
        return entregue;
    }

    public void setEntregue(int entregue) {
        this.entregue = entregue;
    }

    public int getRevisada() {
        return revisada;
    }

    public void setRevisada(int revisada) {
        this.revisada = revisada;
    }

    public int getConcluida() {
        return concluida;
    }

    public void setConcluida(int concluida) {
        this.concluida = concluida;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Collection<Gamificacao> getGamificacoes() {
        return gamificacoes;
    }

    public void setGamificacoes(Collection<Gamificacao> gamificacoes) {
        this.gamificacoes = gamificacoes;
    }

    public Collection<Arquivo> getArquivos() {
        return arquivos;
    }

    public void setArquivos(Collection<Arquivo> arquivos) {
        this.arquivos = arquivos;
    }

    public Collection<Comentario> getComentarios() {
        return comentarios;
    }

    public void setComentarios(Collection<Comentario> comentarios) {
        this.comentarios = comentarios;
    }
}
