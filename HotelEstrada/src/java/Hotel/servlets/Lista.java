/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.servlets;

import Hotel.beans.Apartamento;
import Hotel.beans.Estacionamento;
import Hotel.beans.Hospede;
import Hotel.beans.Pessoa;
import Hotel.beans.Reserva;
import Hotel.dao.GenericDAO;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
    
    public String atualizaSessao(HttpServletRequest req, HttpServletResponse resp) throws SQLException{
        List<Apartamento> apt = null;        
        List<Estacionamento> est = null;
        
        apt = new GenericDAO<Apartamento>(Apartamento.class).getTodos();
        est = new GenericDAO<Estacionamento>(Estacionamento.class).getTodos();
        
        HttpSession session = req.getSession();        
        session.setAttribute("apartamento", apt);        
        session.setAttribute("estacionamento", est);
        return "/WEB-INF/paginas/dashboard.jsp";
    }
}
