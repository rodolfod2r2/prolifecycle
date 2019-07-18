package br.com.prolifecycle.model.dao;

import br.com.prolifecycle.model.vo.Usuario;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import java.util.List;

public class GenericsDAO<T> implements InterfacesDAO<T> {


    @Override
    public void salvarDados(T t) {

        EntityManager sm = EntManFacDAO.getInstance().createManager();

        try {

            sm.getTransaction().begin();
            sm.persist(t);
            sm.getTransaction().commit();

        } catch (Exception e) {

            sm.getTransaction().rollback();

        } finally {

            sm.close();

        }

    }

    @Override
    public void atualizarDados(T t, int id) {

        EntityManager am = EntManFacDAO.getInstance().createManager();

        try {

            am.getTransaction().begin();
            am.merge(am.getReference(t.getClass(), id));
            am.getTransaction().commit();

        } catch (Exception e) {

            am.getTransaction().rollback();

        } finally {

            am.close();

        }

    }

    @Override
    public void removerDados(T t, int id) {

        EntityManager rm = EntManFacDAO.getInstance().createManager();

        try {

            rm.getTransaction().begin();
            rm.remove(rm.getReference(t.getClass(), id));
            rm.getTransaction().commit();

        } catch (Exception e) {

            rm.getTransaction().rollback();

        } finally {

            rm.close();

        }
    }

    @Override
    public T exibirDados(T t, int id) {

        EntityManager rm = EntManFacDAO.getInstance().createManager();
        Query query = rm.createQuery("SELECT u FROM " + t.getClass().getSimpleName() + " u  WHERE u.id = :id" , t.getClass());
        query.setParameter("id", id);
        return  (T) query.getSingleResult();

    }

    @Override
    public List listarDados(T t) {

        EntityManager rm = EntManFacDAO.getInstance().createManager();
        Query query = rm.createQuery("SELECT u FROM " + t.getClass().getSimpleName() + " u", t.getClass());
        return query.getResultList();

    }

    public Usuario autenticacao (String email, String senha) {
        try {

            EntityManager rm = EntManFacDAO.getInstance().createManager();
            Query query = rm.createQuery("SELECT u FROM Usuario u" + " WHERE u.email = :email and u.senha = :senha");
            query.setParameter("email", email);
            query.setParameter("senha", senha);

            return  (Usuario) query.getSingleResult();

        } catch (NoResultException nre) {

            return null;

        }

    }

}
