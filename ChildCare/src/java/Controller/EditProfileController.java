/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import DAO.ManageAccDAO;
import Model.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10, // 10 MB
        maxRequestSize = 1024 * 1024 * 100 // 100 MB
)

/**
 *
 * @author mihxdat
 */
public class EditProfileController extends HttpServlet {
   
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
            out.println("<title>Servlet EditProfileController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditProfileController at " + request.getContextPath () + "</h1>");
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
        HttpSession session = request.getSession();
        Account acc = (Account) session.getAttribute("acc");
        int acc_id = acc.getId();
        ManageAccDAO dao = new ManageAccDAO();
        request.setAttribute("acc", dao.getAccountById(acc_id));
        request.getRequestDispatcher("edit_profile.jsp").forward(request, response);
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
        Part filePart = request.getPart("file");
        String fileName = filePart.getSubmittedFileName();
//        for (Part part : request.getParts()) {
//            part.write("C:\\Users\\minht\\OneDrive\\Documents\\GitHub\\Group5_Assginment_SE1634-Net\\SWP_Assignment_Group_5\\web\\img" + fileName);
//        }
        if (fileName.equals("")) {
            String acc_name = request.getParameter("fullname");
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String mobile = request.getParameter("mobile");
            boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
            HttpSession session = request.getSession();
            Account acc = (Account) session.getAttribute("acc");
            int acc_id = acc.getId();
            ManageAccDAO dao = new ManageAccDAO();
            if (mobile.charAt(0) != '0') {
                System.out.println("so dau tien" + mobile.charAt(0));
                request.setAttribute("acc", dao.getAccountById(acc_id));
                request.setAttribute("msg", "Số đầu tiên của điện thoại phải là số 0");
                request.getRequestDispatcher("edit_profile.jsp").forward(request, response);
                return;
            }
            if (mobile.trim().length() != 10) {
                System.out.println("length: " + mobile.length());
                request.setAttribute("acc", dao.getAccountById(acc_id));
                request.setAttribute("msg", "Số điện thoại phải là 10 số");
                request.getRequestDispatcher("edit_profile.jsp").forward(request, response);
                return;
            }
            dao.UpdateAccountByIdNoImg(acc_id, email, acc_name, mobile, address, gender);
            request.setAttribute("acc", dao.getAccountById(acc_id));
            request.setAttribute("msg", "Edit succesfully");
            request.getRequestDispatcher("profile.jsp").forward(request, response);
            return;
        } else {
            String img = "img\\" + fileName;
            String acc_name = request.getParameter("acc_name");
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String mobie = request.getParameter("mobie");
            boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
            HttpSession session = request.getSession();
            Account acc = (Account) session.getAttribute("acc");
            int acc_id = acc.getId();
            ManageAccDAO dao = new ManageAccDAO();
//            if (mobie.charAt(0) != '0') {
//                System.out.println("so dau tien" + mobie.charAt(0));
//                request.setAttribute("acc", dao.getAccountById(acc_id));
//                request.setAttribute("msg", "Số đầu tiên của điện thoại phải là số 0");
//                request.getRequestDispatcher("edit_profile.jsp").forward(request, response);
//                return;
//            }
//            if (mobie.trim().length() != 10) {
//                System.out.println("length: " + mobie.length());
//                request.setAttribute("acc", dao.getAccountById(acc_id));
//                request.setAttribute("msg", "Số điện thoại phải là 10 số");
//                request.getRequestDispatcher("edit_profile.jsp").forward(request, response);
//                return;
//            }
            dao.UpdateAccountById(acc_id, email, acc_name, mobie, address, gender, email);
            request.setAttribute("acc", dao.getAccountById(acc_id));
            request.setAttribute("msg", "Edit succesfully");
            request.getRequestDispatcher("profile.jsp").forward(request, response);
            return;
        }
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
