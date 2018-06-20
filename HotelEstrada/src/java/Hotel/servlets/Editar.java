/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.servlets;

import Hotel.beans.Pessoa;
import Hotel.dao.GenericDAO;
import Hotel.dao.JPAUtil;
import Hotel.dao.PessoaDAO;
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
        String endereco = req.getParameter("endereco");
        
        try {            
            new PessoaDAO().atualiza(id, nome, cpf, endereco);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Editar.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return "WEB-INF/paginas/dashboard.jsp";
    }    
    
    // Redireciona os parametros da respectiva pessoa para a tela de edição
    public String getEdit(HttpServletRequest req, HttpServletResponse resp){
         Long id = Long.parseLong(req.getParameter("id"));
         Pessoa p = new GenericDAO<Pessoa>(Pessoa.class).getById(id);
         req.setAttribute("pessoa", p);
         req.setAttribute("id", id);
         return "/WEB-INF/paginas/edit.jsp";
    }
}
