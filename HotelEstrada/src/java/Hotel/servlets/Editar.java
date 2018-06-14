/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.servlets;

import Hotel.beans.Pessoa;
import Hotel.dao.GenericDAO;
import Hotel.dao.JPAUtil;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marciano
 */
public class Editar implements Tarefa{

    @Override
    public String executa(HttpServletRequest req, HttpServletResponse resp) {
        Long id = Long.parseLong(req.getParameter("id"));
        String nome = req.getParameter("nome");
        String cpf = req.getParameter("cpf");
        
        if(nome == null || cpf == null){
            req.setAttribute("id", id);
            return "/WEB-INF/paginas/edit.jsp";
        }     
        
        // método genérico para ATUALIZAR
        EntityManager em = new JPAUtil().getEntityManager();
        em.getTransaction().begin();
        Pessoa p = em.find(Pessoa.class , id);
        p.setNome(nome);
        p.setCpf(cpf);
        em.getTransaction().commit();
        em.close();
        
        return "index.html";
    }    
}
