/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;


import DAO.AccountDAO;
import DAO.BlogDBcontext;
import DAO.ServiceCategoryDBcontext;
import DAO.SlideDBcontext;
import Model.Post;
import Model.ServiceCategory;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 *
 * @author phung
 */
public class HomeController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HomeController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HomeController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        BlogDBcontext blogDB = new BlogDBcontext();
        SlideDBcontext bcontext = new SlideDBcontext();
        ServiceCategoryDBcontext serviceCategoryDBcontext = new ServiceCategoryDBcontext();

        request.setAttribute("slide", bcontext.getListSlide());

        Random random = new Random();
        List<Post> allBlogPosts = blogDB.ListBlog();
        int randomIndex = random.nextInt(allBlogPosts.size());
        Post randomBlogPost = allBlogPosts.get(randomIndex);
        request.setAttribute("postRandom", randomBlogPost);

        List<ServiceCategory> ServiceCategoryModers = serviceCategoryDBcontext.ListServiceCategory();
        List<ServiceCategory> randomServices = new ArrayList<>();


        if (ServiceCategoryModers.size() <= 4) {
            randomServices.addAll(ServiceCategoryModers);
        } else {
            // Sử dụng một danh sách tạm thời để chứa tất cả các phần tử
            List<ServiceCategory> tempList = new ArrayList<>(ServiceCategoryModers);

            // Lấy ngẫu nhiên 4 phần tử và thêm vào danh sách randomServices
            for (int i = 0; i < 4; i++) {
                int randomIndex1 = random.nextInt(tempList.size());
                ServiceCategory randomServiceCt = tempList.get(randomIndex1);
                randomServices.add(randomServiceCt);
                tempList.remove(randomIndex1);
            }
        }

        request.setAttribute("serviceCategories", randomServices);

        
        AccountDAO accountDBcontext = new AccountDAO();
        request.setAttribute("accountdoctor", accountDBcontext.listAccountdoctor());
        
        request.getRequestDispatcher("index.jsp").forward(request, response);
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
