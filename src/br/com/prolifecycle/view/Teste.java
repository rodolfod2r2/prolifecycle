package br.com.prolifecycle.view;

import br.com.prolifecycle.controller.ControllerGenerics;
import br.com.prolifecycle.model.vo.Classe;
import br.com.prolifecycle.model.vo.Familia;
import br.com.prolifecycle.model.vo.Prestigio;
import br.com.prolifecycle.model.vo.Usuario;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class Teste {


    public static void main(String[] args) {

        // EntityManagerFactory emf = EntManFacDAO.getInstance().getFactory();

        // Criando uma Classe de Usuario;
        Classe classe = new Classe();
        classe.setNome("Analista");
        classe.setDescricao("Classe de Analista");

        //Utilizando o Controlador Generico para Persistir a Classe de Usuario;
        ControllerGenerics<Classe> contClasse = new ControllerGenerics<>();
        contClasse.salvar(classe);

        // Criando uma Familia de Usuario;
        Familia familia = new Familia();
        familia.setNome("Requisito");
        familia.setDescricao("Familia de Requisito");

        //Utilizando o Controlador Generico para Persistir a Familia de Usuario;
        ControllerGenerics<Familia> contFamilia = new ControllerGenerics<>();
        contFamilia.salvar(familia);


        // Criando um Prestigio de Usuario;
        Prestigio prestigio = new Prestigio();
        prestigio.setNome("Trainee");
        prestigio.setDescricao("Tarefas de pequena ou média complexidade em área(s) específica(s). Elabora projetos (sob supervisão)");

        prestigio.setNome("Junior (JR)");
        prestigio.setDescricao("Funções de procedimentos simples ou que não exigem profundo conhecimento em um ramo de atuação");
        prestigio.setNome("Pleno (PL)");
        prestigio.setDescricao("Atividades específicas, que exigem profundo conhecimento. Toma decisões endossadas por um superior.");
        prestigio.setNome("Sênior (SR)");
        prestigio.setDescricao("Toma decisões. Age de forma autônoma, com base no conhecimento e experiências adquiridos ao longo da carreira. Gere pessoas e projetos.");
        prestigio.setNome("Master");
        prestigio.setDescricao("Atua fora do processo de supervisão ou por demandas. Gere projetos / negócios. Possui autonomia plena.");

        //Utilizando o Controlador Generico para Persistir o Prestigio de Usuario;
        ControllerGenerics<Prestigio> contPrestigio = new ControllerGenerics<>();
        contPrestigio.salvar(prestigio);


        //Auxiliares para Persistencia de Usuario
        classe.setId(1);
        familia.setId(1);
        prestigio.setId(1);

        // Criando um Usuario;
        Usuario usuario = new Usuario();

        usuario.setNome("rodolfo");
        usuario.setEmail("rodolfod2r2@gmail.com");
        usuario.setSenha("123456");
        usuario.setLevel(0);
        usuario.setXp(0);
        usuario.setClasse(classe);
        usuario.setFamilia(familia);
        usuario.setPrestigio(prestigio);

        //Utilizando o Controlador Generico para Persistir o Usuario;
        ControllerGenerics<Usuario> contUsuario = new ControllerGenerics<>();
        contUsuario.salvar(usuario);


        System.out.println(contUsuario.exibir(usuario, 1).getNome());


        //Utilizando os Controladores Genericos para Remover o Usuario, Classe, Familia e Prestigio;

        //contUsuario.remover(usuario, 1);

        //contClasse.remover(classe, 1);

        //contFamilia.remover(familia, 1);

        //contPrestigio.remover(prestigio, 1);

        // emf.close();

    }


}
