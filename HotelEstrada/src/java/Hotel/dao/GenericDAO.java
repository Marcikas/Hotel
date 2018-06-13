/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.dao;


import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaQuery;

/**
 *
 * @author Marciano
 */
public class GenericDAO<T> {
    
	private final Class<T> classe;
        
        public GenericDAO(Class<T> classe){
            this.classe = classe;
        }
        
        public void adiciona(T t) throws SQLException{
            EntityManager em = new JPAUtil().getEntityManager();
            em.getTransaction().begin();
            em.persist(t);
            em.getTransaction().commit();
            em.close();
        }       
}
