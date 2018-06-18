/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.beans;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Marciano
 */

// MAIN PARA GERAÇÃO DE TABELAS SEM PRECISAR PREENCHER FORMULARIOS

public class Teste {
    public static void main(String[] args){        
        EntityManagerFactory factory = Persistence
                        .createEntityManagerFactory("HotelEstradaPU");
        EntityManager manager = factory.createEntityManager();
        // Criação de objetos para teste
        
        // chamado manual do JPA        
        
        manager.getTransaction().begin();
        //manager.persist(estacionamento);      
        manager.getTransaction().commit();
        manager.close();
        factory.close();	
    }
}
