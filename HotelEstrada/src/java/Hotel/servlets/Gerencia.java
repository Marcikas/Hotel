/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.servlets;

import Hotel.beans.Funcionario;
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
public class Gerencia implements Tarefa{

    @Override
    public String executa(HttpServletRequest req, HttpServletResponse resp) {        
        List<Funcionario> func = null;
        try {
            func = new GenericDAO<Funcionario>(Funcionario.class).getTodos();
        } catch (SQLException ex) {
            Logger.getLogger(Gerencia.class.getName()).log(Level.SEVERE, null, ex);
        }
        req.setAttribute("funcionario", func);
        return "WEB-INF/paginas/gerencia.jsp";
    }
    
}
