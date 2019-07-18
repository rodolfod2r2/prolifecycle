package br.com.prolifecycle.model.dao;

import java.util.List;

public interface InterfacesDAO<T> {

    void salvarDados(T t);

    void atualizarDados(T t, int id);

    void removerDados(T t, int id);

    T exibirDados(T t, int id);

    List listarDados(T t);

}
