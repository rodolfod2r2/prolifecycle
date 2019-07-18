package br.com.prolifecycle.controller;

import java.util.List;

public interface InterfacesController<T> {

    void salvar(T t);

    void atualizar(T t, int id);

    void remover(T t, int id);

    T exibir(T t, int id);

    List exibirLista(T t);

}
