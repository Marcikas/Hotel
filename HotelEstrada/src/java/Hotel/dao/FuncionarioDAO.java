/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.dao;

import Hotel.beans.Funcionario;
import java.sql.SQLException;
import javax.persistence.EntityManager;

/**
 *
 * @author Kellynha
 */
public class FuncionarioDAO {
    
    private static EntityManager entityManager;
    
    public FuncionarioDAO() throws ClassNotFoundException{
        entityManager = new JPAUtil().getEntityManager();
    }
    
    public Funcionario autentica(String email, String senha) throws SQLException {

        if (email == null || senha == null){
            return null;
        }
        
        Funcionario f = entityManager.find(Funcionario.class, email);
        
        if(f != null){
            if(f.getSenha().equals(senha)){
                return f;
            }
            return null;
        }
        return null;
    }
}
