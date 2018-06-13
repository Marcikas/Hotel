/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marciano
 */
public class Controller extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // tarefa
        String tarefa = req.getParameter("tarefa");        
       
        if(tarefa == null) {
            throw new IllegalArgumentException("Você esqueceu de informar a tarefa!");
        }
        
        try {
            tarefa = "Hotel.servlets." + tarefa;
            Class<?> classe = Class.forName(tarefa);
            Tarefa instancia = (Tarefa) classe.newInstance();
            String pagina = null;           
            pagina = instancia.executa(req, resp);           
            
            RequestDispatcher requestDispatcher = req.getRequestDispatcher(pagina);
            requestDispatcher.forward(req, resp);

        }
        catch (ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            System.out.println(ex.toString());
        } catch (IllegalArgumentException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        } 
    }
}
