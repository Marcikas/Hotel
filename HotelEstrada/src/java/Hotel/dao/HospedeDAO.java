/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.dao;

import Hotel.beans.Hospede;
import javax.persistence.EntityManager;

/**
 *
 * @author Marciano
 */
public class HospedeDAO {
    private static EntityManager entityManager;
    
    public HospedeDAO() throws ClassNotFoundException{
        entityManager = new JPAUtil().getEntityManager();
    }
    
    public void foiHospedado(Hospede h){
        entityManager.getTransaction().begin();
        h.setQtdHospedagens(h.getQtdHospedagens() + 1);
        entityManager.merge(h);
        entityManager.getTransaction().commit();
        entityManager.close();        
    }
   
}
