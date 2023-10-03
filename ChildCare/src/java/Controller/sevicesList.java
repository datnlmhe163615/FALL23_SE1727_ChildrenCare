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
 * @author asus
 */
public class sevicesList extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String mode = request.getParameter("mode");
        if (mode != null) {
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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
