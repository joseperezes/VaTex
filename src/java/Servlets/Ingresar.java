/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controller.Operaciones;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Owner
 */
@WebServlet(name = "Ingresar", urlPatterns = {"/Ingresar"})
public class Ingresar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Operaciones con = new Operaciones();
            String N, P;
            N = request.getParameter("name");
            P = request.getParameter("pws");

            String y = con.validarUsuario(N, P);
            if (y.length() > 0) {
                HttpSession sesion = request.getSession(true);
                sesion.setAttribute("rol", y);
                sesion.setAttribute("nombre", N);

                if (y.equalsIgnoreCase("Gerente")) {
                    response.sendRedirect("InicioGerente.jsp");
                } else {

                    if (y.equalsIgnoreCase("Disenador")) {
                        response.sendRedirect("Disenador.jsp");
                    } else {
                    }
                    if (y.equalsIgnoreCase("Costos")) {
                        response.sendRedirect("Costos.jsp");
                    } else {
                    }
                    if (y.equalsIgnoreCase("JefeProduccion")) {
                        response.sendRedirect("JefeProduccion.jsp");
                    } else {
                    }
                    if (y.equalsIgnoreCase("Supervisor")) {
                        response.sendRedirect("Supervisor.jsp");
                    } else {
                    }
                    if (y.equalsIgnoreCase("administrador")) {
                        response.sendRedirect("InicioAdmin.jsp");
                    } else {
                        response.sendRedirect("error.html");
                    }
                }
            }

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
