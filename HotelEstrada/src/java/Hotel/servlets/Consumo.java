/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 218736
 */
@WebServlet(name = "Consumo", urlPatterns = {"/Consumo"})
public class Consumo extends HttpServlet implements Tarefa{

    @Override
    public String executa(HttpServletRequest req, HttpServletResponse resp) {
            
        return "WEB-INF/paginas/dashboard.jsp";
    }


   
}
