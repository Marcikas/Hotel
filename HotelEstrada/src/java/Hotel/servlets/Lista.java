/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.servlets;

import Hotel.beans.Pessoa;
import Hotel.dao.GenericDAO;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marciano
 */
public class Lista implements Tarefa{  

    @Override
    public String executa(HttpServletRequest req, HttpServletResponse resp) {
        List<Pessoa> pessoas = null;
        try {
            pessoas = new GenericDAO<Pessoa>(Pessoa.class).getTodos();
        } catch (SQLException ex) {
                    Logger.getLogger(Lista.class.getName()).log(Level.SEVERE, null, ex);
        }
        req.setAttribute("pessoa", pessoas);
        return "/WEB-INF/paginas/lista.jsp";
    }                   
}
