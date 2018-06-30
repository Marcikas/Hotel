/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.servlets;

import Hotel.beans.Estacionamento;
import Hotel.beans.Hospede;
import Hotel.dao.GenericDAO;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Marciano
 */
public class Estacionamentos implements Tarefa{

    @Override
    public String executa(HttpServletRequest req, HttpServletResponse resp) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public String redirect(HttpServletRequest req, HttpServletResponse resp){        
        return "WEB-INF/paginas/estacionamento.jsp";
    }
    
    public String alugaEstacionamento(HttpServletRequest req, HttpServletResponse resp){
        Long idHospede = Long.parseLong(req.getParameter("hospede"));
        Long idEst = Long.parseLong(req.getParameter("estacionamento"));
        
        Estacionamento est = new GenericDAO<Estacionamento>(Estacionamento.class).getById(idEst);
        est.setDisponibilidade(false);
        Hospede hospede = new GenericDAO<Hospede>(Hospede.class).getById(idHospede);
        hospede.setEstacionamento(est);
        
        try {
            new GenericDAO<Estacionamento>(Estacionamento.class).adiciona(est);
            new GenericDAO<Hospede>(Hospede.class).adiciona(hospede);
        } catch (SQLException ex) {
            Logger.getLogger(Estacionamentos.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "WEB-INF/paginas/dashboard.jsp";
    }
}
