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
import Hotel.dao.GenericDAO;
import Hotel.dao.HospedeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author carlysson
 */
@WebServlet(name = "NovaHospedagem", urlPatterns = {"/NovaHospedagem"})
public class NovaHospedagem extends HttpServlet implements Tarefa {

    @Override
    public String executa(HttpServletRequest req, HttpServletResponse resp) {
        Long id = Long.parseLong(req.getParameter("id"));
        Reserva res = new GenericDAO<Reserva>(Reserva.class).getById(id);
        req.setAttribute("reserva", res);
        return "WEB-INF/paginas/hospedagem.jsp";
        
    }

    public String validarHospedagem(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ClassNotFoundException {
        String dataEntrada = req.getParameter("dataEntrada");
        String dataSaida = req.getParameter("dataSaida");
        Long id = Long.parseLong(req.getParameter("id"));
        Long valorDiaria = Long.parseLong(req.getParameter("diaria"));
        Reserva res = new GenericDAO<Reserva>(Reserva.class).getById(id);

        dataEntrada = dataEntrada.replace('-', '/');
        dataSaida = dataSaida.replace('-', '/');

        DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
        Date startDate = null;
        Date endDate = null;
        try {
            long epochEntrada;
            long epochSaida;
            startDate = df.parse(dataEntrada);
            epochEntrada = startDate.getTime() / 1000;
            endDate = df.parse(dataSaida);
            epochSaida = endDate.getTime() / 1000;

            long diarias = (epochSaida - epochEntrada) / 86400;

            long valorTotal = (diarias * valorDiaria);
            
            Hospedagem hospedagem =  new Hospedagem();
            hospedagem.setConsumo(null);
            hospedagem.setDataEntrada(startDate);
            hospedagem.setDataSaida(endDate);
            if(res.getHospede().getQtdHospedagens() == 3){ // desconto se for a terceira hospedagem do cliente
                valorTotal = valorTotal * 0.90;
            }
            hospedagem.setValorTotal(valorTotal);
            hospedagem.setReserva(res);
            new GenericDAO<Hospedagem>(Hospedagem.class).adiciona(hospedagem);
            Hospede h = res.getHospede();
            new HospedeDAO().foiHospedado(h);
            
            System.out.println("Quantidade de Dias: " + diarias);
            System.out.println("Valor a ser pago pelas diarias: " + valorTotal);

        } catch (ParseException ex) {
            Logger.getLogger(NovaReserva.class.getName()).log(Level.SEVERE, null, ex);
        }
    
        return "WEB-INF/paginas/dashboard.jsp";
    }

}
