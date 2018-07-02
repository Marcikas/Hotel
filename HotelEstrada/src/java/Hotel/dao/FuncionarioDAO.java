/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.dao;

import Hotel.beans.Funcionario;
import Hotel.beans.Recepcionista;
import java.sql.SQLException;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

/**
 *
 * @author Kellynha
 */
public class FuncionarioDAO {
    
    private static EntityManager entityManager;
    
    public FuncionarioDAO() throws ClassNotFoundException{
        entityManager = new JPAUtil().getEntityManager();
    }
    
    // EFETUA O LOGIN DO FUNCIONARIO
    public Funcionario autentica(String email, String senha) throws SQLException {
        if (email == null || senha == null){
            return null;
        }
       
        TypedQuery<Funcionario> query = entityManager.createQuery("SELECT f FROM Funcionario f WHERE f.email = :email", Funcionario.class);
        query.setParameter("email", email);        
        Funcionario f = query.getSingleResult();
        
        if(f != null){
            if(f.getSenha().equals(senha)){
                return f;
            }
            return null;
        }
        return null;
    }
    
    // aplica comissão para recepcionista por cada reserva/hospedagem efetuada pela mesma
    public void comissao(Recepcionista r){
        entityManager.getTransaction().begin();
        r.setSalario(r.getSalario() + 50);
        entityManager.merge(r);
        entityManager.getTransaction().commit();
        entityManager.close();
    }
}
