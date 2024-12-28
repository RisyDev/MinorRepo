package humba2;

import java.sql.*;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/signupServlet")
public class signupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();
            response.setContentType("text/html");
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/minorcut", "root", "@Risy2000");

            String name = request.getParameter("txtName");
            String password = request.getParameter("txtPwd");

            // Modify SQL query to insert data
            PreparedStatement ps = con.prepareStatement("INSERT INTO userdetails (username, password) VALUES (?, ?)");
            ps.setString(1, name);
            ps.setString(2, password);

            int result = ps.executeUpdate();

            if (result > 0) {
            	response.getWriter().println("<script>alert('Account created successfully!');</script>");
                RequestDispatcher rd = request.getRequestDispatcher("subscription.jsp");
                rd.forward(request, response);
            } 
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
