/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.AccountDAO;
import Model.Account;
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
public class searchAccount extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String search = request.getParameter("search");
        AccountDAO dao = new AccountDAO();
        int totalblog = dao.getNumberAccount();
        int numberPage = (int) Math.ceil((double) totalblog / 9);
        int index;
        String currentPage = request.getParameter("index");
        if (currentPage == null) {
            index = 1;
        } else {
            index = Integer.parseInt(currentPage);
        }
        ArrayList<Account> list = dao.searchAccount(search, index);
        request.setAttribute("numberPage", numberPage);
        request.setAttribute("account", list);
        request.getRequestDispatcher("manageUser.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
