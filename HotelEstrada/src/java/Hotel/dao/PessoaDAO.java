/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.dao;


import Hotel.beans.Pessoa;
import javax.persistence.EntityManager;

/**
 *
 * @author Marciano
 */
public class PessoaDAO {
    private static EntityManager entityManager;
    
    public PessoaDAO() throws ClassNotFoundException{
        entityManager = new JPAUtil().getEntityManager();
    }
    
    public void atualiza(Long id, String nome, String cpf, String endereco){        
        entityManager.getTransaction().begin();
        Pessoa p = entityManager.find(Pessoa.class , id);
        p.setNome(nome);
        p.setCpf(cpf);
        p.setEndereco(endereco);        
        entityManager.getTransaction().commit();
        entityManager.close(); 
    }   
}
