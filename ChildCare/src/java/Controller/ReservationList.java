package Controller;

import DAO.ReservationDAO;
import Model.Reservation_1;
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
public class ReservationList extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ReservationDAO dao = new ReservationDAO();
        int total = dao.getNumberReservation();
        int numberPage = (int) Math.ceil((double) total / 9);
        int index;
        String currentPage = request.getParameter("index");
        if (currentPage == null) {
            index = 1;
        } else {
            index = Integer.parseInt(currentPage);
        }
        ArrayList<Reservation_1> list = dao.getReservation(index);
        request.setAttribute("numberPage", numberPage);
        request.setAttribute("reservation", list);
        request.getRequestDispatcher("reservationList.jsp").forward(request, response);

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