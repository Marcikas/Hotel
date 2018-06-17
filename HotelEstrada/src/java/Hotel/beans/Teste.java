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
        
        /*Produto p = new Produto();
        p.setNomeProduto("Coca cola Lata");
        p.setValorProduto(5);
        */
        Long id = Long.parseLong("3");
        Predio p1;
        p1 = manager.find(Predio.class, id);
        
        Apartamento apt = new Apartamento();
        apt.setAndarQuarto("1");
        apt.setDisponibilidade(true);
        apt.setNumeroQuarto("11");
        apt.setPredio(p1);
        
        Apartamento apt2 = new Apartamento();
        apt2.setAndarQuarto("2");
        apt2.setDisponibilidade(true);
        apt2.setNumeroQuarto("21");
        apt2.setPredio(p1);
        
        Apartamento apt3 = new Apartamento();
        apt3.setAndarQuarto("3");
        apt3.setDisponibilidade(true);
        apt3.setNumeroQuarto("31");
        apt3.setPredio(p1);
        // chamado manual do JPA
        
        manager.getTransaction().begin();
        //manager.persist(p);
        //manager.persist(p1);
        manager.persist(apt);
        manager.persist(apt2);
        manager.persist(apt3);
        manager.getTransaction().commit();
        manager.close();
        factory.close();	
    }
}
