package br.com.prolifecycle.model.vo;

import javax.persistence.*;

@Entity
@Table(name = "usuario")
public class Usuario {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "usuario_id", columnDefinition = "integer", length = 11)
    private int id;

    @Column(name = "usuario_nome", nullable = false, length = 150)
    private String nome;

    @Column(name = "usuario_email", nullable = false, length = 150)
    private String email;

    @Column(name = "usuario_senha", nullable = false, length = 12)
    private String senha;

    @Column(name = "usuario_xp", columnDefinition = "integer", length = 11)
    private int xp;

    @Column(name = "usuario_level", columnDefinition = "integer", length = 11)
    private int level;

    @OneToOne
    @JoinColumn(name = "usuario_classe", referencedColumnName = "classe_id", foreignKey = @ForeignKey(name = "fk_usuario_classe"))
    private Classe classe;

    @OneToOne
    @JoinColumn(name = "usuario_familia", referencedColumnName = "familia_id", foreignKey = @ForeignKey(name = "fk_usuario_familia"))
    private Familia familia;

    @OneToOne
    @JoinColumn(name = "usuario_prestigio", referencedColumnName = "prestigio_id", foreignKey = @ForeignKey(name = "fk_usuario_prestigio"))
    private Prestigio prestigio;

    @OneToOne
    @JoinColumn(name = "usuario_arquivo", referencedColumnName = "arquivo_id", foreignKey = @ForeignKey(name = "fk_usuario_arquivo"))
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public int getXp() {
        return xp;
    }

    public void setXp(int xp) {
        this.xp = xp;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public Classe getClasse() {
        return classe;
    }

    public void setClasse(Classe classe) {
        this.classe = classe;
    }

    public Familia getFamilia() {
        return familia;
    }

    public void setFamilia(Familia familia) {
        this.familia = familia;
    }

    public Prestigio getPrestigio() {
        return prestigio;
    }

    public void setPrestigio(Prestigio prestigio) {
        this.prestigio = prestigio;
    }

    public Arquivo getArquivo() {
        return arquivo;
    }

    public void setArquivo(Arquivo arquivo) {
        this.arquivo = arquivo;
    }
}
