/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Agenda;
import modelo.Contacto;

/**
 *
 * @author Desarrollo Web
 */
public class Controlador extends HttpServlet {

    String nombreDefecto = "alan";
    String contraDefecto = "alan97";
    Agenda agenda1 = new Agenda();

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
        PrintWriter out = response.getWriter();
        String accion = request.getParameter("accion");

        switch (accion) {
            case "Iniciar Sesion":
                String nombre = request.getParameter("nombreUsuario");
                String contra = request.getParameter("contra");
                if (nombreDefecto.equals(nombre) && contraDefecto.equals(contra)) {
                    response.sendRedirect("PantallaPrincipal.jsp");
                }
            break;
            case "agregar":
                request.getRequestDispatcher("AgregarContacto.jsp").forward(request, response);
            break;
            case "Agregar Nuevo Contacto":
                String nombreContacto = request.getParameter("nombreContacto");
                int telefono = Integer.parseInt(request.getParameter("telefono"));
                Contacto c = new Contacto(nombreContacto,telefono);
                agenda1.agregarContacto(c);
                request.setAttribute("mensaje", nombreContacto);
                request.getRequestDispatcher("AgregarContacto.jsp?mensaje="+c.getNombre()).forward(request, response);
            break;
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
