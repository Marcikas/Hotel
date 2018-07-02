/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.servlets;

import Hotel.beans.Apartamento;
import Hotel.beans.Estacionamento;
import Hotel.beans.Hospedagem;
import Hotel.beans.Hospede;
import Hotel.beans.Recepcionista;
import Hotel.beans.Reserva;
import Hotel.dao.FuncionarioDAO;
import Hotel.dao.GenericDAO;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
public class NovaReserva implements Tarefa {

    @Override
    public String executa(HttpServletRequest req, HttpServletResponse resp) {
        Long idApt = Long.parseLong(req.getParameter("apartamento"));
        Long idHospede = Long.parseLong(req.getParameter("hospede"));
        Long idEst = Long.parseLong(req.getParameter("estacionamento"));
        Long idRecep = Long.parseLong(req.getParameter("recepcionista"));

        Apartamento apt = new GenericDAO<Apartamento>(Apartamento.class).getById(idApt);
        apt.setDisponibilidade(false);

        Hospede hospede = new GenericDAO<Hospede>(Hospede.class).getById(idHospede);

        try {
            Estacionamento est = new GenericDAO<Estacionamento>(Estacionamento.class).getById(idEst);
            est.setDisponibilidade(false);

            Recepcionista recep = new GenericDAO<Recepcionista>(Recepcionista.class).getById(idRecep);
            Reserva reserva = new Reserva();
            reserva.setApartamento(apt);
            reserva.setHospede(hospede);
            reserva.setEstacionamento(est);
            reserva.setRecepcionista(recep);
            reserva.setStatus(true);

            new GenericDAO<Reserva>(Reserva.class).adiciona(reserva);
            new GenericDAO<Apartamento>(Apartamento.class).adiciona(apt);
            new GenericDAO<Estacionamento>(Estacionamento.class).adiciona(est);            
            new FuncionarioDAO().comissao(recep);

        } catch (SQLException ex) {
            Logger.getLogger(NovaReserva.class.getName()).log(Level.SEVERE, null, ex);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(NovaReserva.class.getName()).log(Level.SEVERE, null, ex);
        }        
            
        return "WEB-INF/paginas/dashboard.jsp";
    }

    public String validarReserva(HttpServletRequest req, HttpServletResponse resp) {
        Long id = Long.parseLong(req.getParameter("id"));
        Reserva r = null;
        return "WEB-INF/paginas/dashboard.jsp";
    }

    public String removerReserva(HttpServletRequest req, HttpServletResponse resp) {
        Long id = Long.parseLong(req.getParameter("id"));
        Reserva r = new GenericDAO<Reserva>(Reserva.class
        ).getById(id);

        Apartamento apt = new GenericDAO<Apartamento>(Apartamento.class
        ).getById(r.getApartamento().getIdApartamento());
        apt.setDisponibilidade(true);

        Estacionamento est = new GenericDAO<Estacionamento>(Estacionamento.class
        ).getById(r.getEstacionamento().getIdVaga());
        est.setDisponibilidade(true);

        try {
            new GenericDAO<Reserva>(Reserva.class
            ).remove(r, id);

            new GenericDAO<Apartamento>(Apartamento.class
            ).adiciona(apt);

            new GenericDAO<Estacionamento>(Estacionamento.class
            ).adiciona(est);

        } catch (SQLException ex) {
            Logger.getLogger(Remover.class
                    .getName()).log(Level.SEVERE, null, ex);
        }

        return "/WEB-INF/paginas/dashboard.jsp";
    }

    public String getReservas(HttpServletRequest req, HttpServletResponse resp) {
        List<Reserva> reservas = null;

        try {
            reservas = new GenericDAO<Reserva>(Reserva.class
            ).getTodos();

        } catch (SQLException ex) {
            Logger.getLogger(Lista.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        req.setAttribute("reservas", reservas);
        return "/WEB-INF/paginas/reservas.jsp";
    }
}
