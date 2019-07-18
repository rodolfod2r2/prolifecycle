package br.com.prolifecycle.model.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EntManFacDAO {

    private static EntManFacDAO instance;
    private final EntityManagerFactory factory;

    private EntManFacDAO(){
        this.factory = Persistence.createEntityManagerFactory("prolifecycle");
    }

    public static EntManFacDAO getInstance(){
        if (EntManFacDAO.instance == null){
            EntManFacDAO.instance = new EntManFacDAO();
        }
        return EntManFacDAO.instance;
    }

    public EntityManagerFactory getFactory() {
        return this.factory;
    }

    public EntityManager createManager() {
        return this.factory.createEntityManager();
    }
}
