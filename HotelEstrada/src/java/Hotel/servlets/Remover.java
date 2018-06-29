/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.servlets;

import Hotel.beans.Pessoa;
import Hotel.beans.Reserva;
import Hotel.dao.GenericDAO;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marciano
 */
public class Remover implements Tarefa{

    @Override
    public String executa(HttpServletRequest req, HttpServletResponse resp) {
        Long id = Long.parseLong(req.getParameter("id"));
        Pessoa p = null;
        
        
        try {
            new GenericDAO<Pessoa>(Pessoa.class).remove(p, id);
        } catch (SQLException ex) {
                Logger.getLogger(Remover.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return "/WEB-INF/paginas/dashboard.jsp";
    }
    
    public String removerReserva(HttpServletRequest req, HttpServletResponse resp) {
        Long id = Long.parseLong(req.getParameter("id"));
        Reserva r = null;        
        
        try {
            new GenericDAO<Reserva>(Reserva.class).remove(r, id);
        } catch (SQLException ex) {
                Logger.getLogger(Remover.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return "/WEB-INF/paginas/dashboard.jsp";
    }                

}
