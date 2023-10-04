/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.ServicesDAO;
import Model.Service;
import Model.ServiceCategory;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author iNFJZ
 */
public class services extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet services</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet services at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
       String mode = request.getParameter("mode");
        if (mode == null) {
            ServicesDAO dao = new ServicesDAO();
            ArrayList<ServiceCategory> category = dao.getServiceCate();
            request.setAttribute("category", category);
            request.getRequestDispatcher("servicesCategory.jsp").forward(request, response);
        } else {
            String id = request.getParameter("id");
            int cid = Integer.parseInt(id);
            ServicesDAO dao = new ServicesDAO();
            int total = dao.getNumberService(cid);
            int numberPage = (int) Math.ceil((double) total / 9);
            int index;
            String currentPage = request.getParameter("index");
            if (currentPage == null) {
                index = 1;
            } else {
                index = Integer.parseInt(currentPage);
            }
            ArrayList<Service> services = dao.getService(cid, index);
            ArrayList<ServiceCategory> category = dao.getServiceCate();
            request.setAttribute("category", category);
            request.setAttribute("services", services);
            request.setAttribute("numberPage", numberPage);
            request.setAttribute("id", id);
            request.getRequestDispatcher("servicesList.jsp").forward(request, response);
        }
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
        this.doGet(request, response);
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
