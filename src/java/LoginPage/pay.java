/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LoginPage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author RAJ
 */
public class pay extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet pay</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet pay at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
        //processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String p = request.getParameter("p");
        String name = request.getParameter("name");
        String add = request.getParameter("add");
        String cn = request.getParameter("cn");
        String ccn = request.getParameter("ccn");
        String cvv = request.getParameter("cvv");

        try {

            // loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");

            //creating connection with the database 
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/billingsystem", "Ronit@1040", "Ronit@1040");

            PreparedStatement ps = con.prepareStatement("insert into product(name,address,cn,ccn,cvv,pdetail) values (?,?,?,?,?,?)");

            ps.setString(1, name);
            ps.setString(2, add);
            ps.setString(3, cn);
            ps.setString(4, ccn);
            ps.setString(5, cvv);
            ps.setString(6, p);
            int i = ps.executeUpdate();

            if (i > 0) {
                request.setAttribute("name", name);
                request.setAttribute("add", add);
                request.setAttribute("cn", cn);
                request.setAttribute("p", p);
                RequestDispatcher rs = request.getRequestDispatcher("Bill.jsp");
                rs.forward(request, response);

            } else {
                out.print("Failed");
            }
            ps.close();
            con.close();

        } catch (Exception se) {
            se.printStackTrace();
        }
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
