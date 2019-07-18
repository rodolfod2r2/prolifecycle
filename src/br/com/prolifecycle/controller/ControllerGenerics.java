package br.com.prolifecycle.controller;

import br.com.prolifecycle.model.dao.GenericsDAO;
import br.com.prolifecycle.model.vo.Usuario;

import java.util.List;

public class ControllerGenerics<T> implements InterfacesController<T> {

    @Override
    public void salvar(T t) {

        GenericsDAO<T> s = new GenericsDAO<>();
        s.salvarDados(t);

    }

    @Override
    public void atualizar(T t, int id) {

        GenericsDAO<T> a = new GenericsDAO<>();
        a.atualizarDados(t, id);

    }

    @Override
    public void remover(T t, int id) {

        GenericsDAO<T> r = new GenericsDAO<>();
        r.removerDados(t, id);

    }

    @Override
    public T exibir(T t, int id) {

        GenericsDAO<T> e = new GenericsDAO<>();
        return e.exibirDados(t, id);

    }

    @Override
    public List exibirLista(T t) {

        GenericsDAO<T> el = new GenericsDAO<>();
        return el.listarDados(t);

    }


    public Usuario autenticarUsu (String email, String senha) {
        GenericsDAO<Usuario> aut = new GenericsDAO<>();
        return aut.autenticacao(email, senha);
    }

}
