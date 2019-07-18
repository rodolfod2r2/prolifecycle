package br.com.prolifecycle.view;

import br.com.prolifecycle.controller.ControllerGenerics;
import br.com.prolifecycle.model.vo.Classe;
import br.com.prolifecycle.model.vo.Familia;
import br.com.prolifecycle.model.vo.Prestigio;
import br.com.prolifecycle.model.vo.Usuario;

import java.util.List;

public class Teste2 {

    public static void main(String[] args) {

        Classe classe = new Classe();
        ControllerGenerics<Classe> contClasse = new ControllerGenerics<>();
        List<Classe> resultadosClasse = contClasse.exibirLista(classe);
        for (Classe c : resultadosClasse) {
            System.out.println("\nNome: " + c.getNome() + "\nDescrição: " + c.getDescricao());
        }

        Familia familia = new Familia();
        ControllerGenerics<Familia> contFamilia = new ControllerGenerics<>();
        List<Familia> resultadosFamilia = contFamilia.exibirLista(familia);
        for (Familia c : resultadosFamilia) {
            System.out.println("\nNome: " + c.getNome() + "\nDescrição: " + c.getDescricao());
        }

        Prestigio prestigio = new Prestigio();
        ControllerGenerics<Prestigio> contPrestigio = new ControllerGenerics<>();
        List<Prestigio> resultadosPrestigio = contPrestigio.exibirLista(prestigio);
        for (Prestigio c : resultadosPrestigio) {
            System.out.println("\nNome: " + c.getNome() + "\nDescrição: " + c.getDescricao());
        }

        Usuario usuario = new Usuario();
        ControllerGenerics<Usuario> contUsuario = new ControllerGenerics<>();
        List<Usuario> resultadosUsuario = contUsuario.exibirLista(usuario);
        for (Usuario c : resultadosUsuario) {
            System.out.println("\nUsuario: " + c.getNome() + "\nCargo: " + c.getClasse().getNome() + " de " + c.getFamilia().getNome() + " " + c.getPrestigio().getNome()
            );
        }

         contUsuario.remover(usuario, 2);


    }
}
