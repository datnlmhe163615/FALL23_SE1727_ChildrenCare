/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.ServicesDAO;
import Model.ServiceCategory_1;
import Model.Service_2;
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

public class services extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String mode = request.getParameter("mode");
        if (mode == null) {
            ServicesDAO dao = new ServicesDAO();
            ArrayList<ServiceCategory_1> category = dao.getServiceCate();
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
            ArrayList<Service_2> services = dao.getService(cid, index);
            ArrayList<ServiceCategory_1> category = dao.getServiceCate();
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