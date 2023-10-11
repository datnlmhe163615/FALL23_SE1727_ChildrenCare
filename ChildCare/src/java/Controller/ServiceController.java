/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import DAO.ServiceDBcontext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author phung
 */
public class ServiceController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServiceController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServiceController at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String gamil_raw = request.getParameter("gmail");
        String choseservice_raw = request.getParameter("choseservice");
        String inputHour_raw = request.getParameter("inputHour");
        String phone_raw = request.getParameter("phone");
        String address_raw = request.getParameter("address");
        String date_raw = request.getParameter("date");
        String doctor_raw = request.getParameter("chosesedoctor");
        
        request.setAttribute("gamil_raw", gamil_raw);
        request.setAttribute("choseservice_raw", choseservice_raw);
        request.setAttribute("inputHour_raw", inputHour_raw);
        request.setAttribute("phone_raw", phone_raw);
        request.setAttribute("address_raw", address_raw);
        request.setAttribute("date_raw", date_raw);
        request.setAttribute("doctor_raw", doctor_raw);
        
        ServiceDBcontext dBcontext = new ServiceDBcontext();
        request.setAttribute("count1", dBcontext.countService(choseservice_raw));
        request.setAttribute("listservice", dBcontext.listService(choseservice_raw));
        request.getRequestDispatcher("service1.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
