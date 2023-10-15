/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.ReservationDBcontex;
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
public class MedicalexaminationController extends HttpServlet {

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
            out.println("<title>Servlet MedicalexaminationController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MedicalexaminationController at " + request.getContextPath() + "</h1>");
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
        String id = request.getParameter("1");
        ReservationDBcontex reservationDBcontex = new ReservationDBcontex();
        ServiceDBcontext serviceDBcontext = new ServiceDBcontext();
        request.setAttribute("listReservation", reservationDBcontex.getListReservation("1"));
        request.setAttribute("listservice", serviceDBcontext.getlistService());
        request.setAttribute("idaccount", 1);
        request.getRequestDispatcher("Medical examination.jsp").forward(request, response);
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
        ServiceDBcontext serviceDBcontext = new ServiceDBcontext();
        request.setAttribute("listservice", serviceDBcontext.getlistService());
        String id_raw = request.getParameter("idcategory");
        String date_raw = request.getParameter("date");
        String idacount_raw = request.getParameter("id");

        ReservationDBcontex reservationDBcontex = new ReservationDBcontex();

        System.out.println("test" + idacount_raw);
        System.out.println("t" + date_raw);
        request.setAttribute("listReservation", reservationDBcontex.searchReservations(id_raw, date_raw, idacount_raw));
        response.sendRedirect("Medical examination.jsp");

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
