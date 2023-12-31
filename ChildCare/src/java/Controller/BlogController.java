/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.BlogDBcontext;
import Model.Post;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author phung
 */
public class BlogController extends HttpServlet {

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
            out.println("<title>Servlet BlogController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BlogController at " + request.getContextPath() + "</h1>");
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
        int checkpage = 0;
        BlogDBcontext blogDB = new BlogDBcontext();
        int pageSize = 2; // Số lượng bài đăng trên mỗi trang

        String pageParam = request.getParameter("page");
        int page;
        if (pageParam != null && !pageParam.isEmpty()) {
            try {
                page = Integer.parseInt(pageParam);
            } catch (NumberFormatException e) {
                // Xử lý nếu giá trị không hợp lệ
                // Ví dụ: trả về trang lỗi hoặc giá trị mặc định
                page = 1; // Số trang mặc định
            }
        } else {
            page = 1; // Số trang mặc định nếu tham số "page" không tồn tại
        }

       // Tính toán số trang và trang hiện tại
        int totalPosts = blogDB.getTotalPosts(); // Thay thế bằng hàm lấy tổng số bài đăng
        int totalPages = (int) Math.ceil((double) totalPosts / pageSize);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("currentPage", page);
        ArrayList<Post> posts = blogDB.ListBlog1(page, pageSize);
        request.setAttribute("post", posts);
        request.setAttribute("blogcategory", blogDB.ListBlogCategory());
        request.setAttribute("checkpage", checkpage);
        request.getRequestDispatcher("blog.jsp").forward(request, response);

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
        String idCategory_raw = request.getParameter("idcategory");
        String day_raw = request.getParameter("idday");
        String search_raw = request.getParameter("search");

        BlogDBcontext blogDB = new BlogDBcontext();
        request.setAttribute("blogcategory", blogDB.ListBlogCategory());
        request.setAttribute("post", blogDB.blogSearch(idCategory_raw, day_raw, search_raw));

        request.getRequestDispatcher("blog.jsp").forward(request, response);
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
