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
@WebServlet("/addMovieServlet")
public class addMovieServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();
            response.setContentType("text/html");
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/minorcut", "root", "@Risy2000");

            String movieName = request.getParameter("movieName");
            String movieDescription = request.getParameter("movieDescription");
            String movieImage = request.getParameter("movieImage");
            String movieLink = request.getParameter("movieLink");


            // Modify SQL query to insert data
            PreparedStatement ps = con.prepareStatement("INSERT INTO movies (movie_name,description,image_url, movie_link) VALUES (?, ?, ?, ?)");
            ps.setString(1, movieName);
            ps.setString(2, movieDescription);
            ps.setString(3, movieImage);
            ps.setString(4, movieLink);


            int result = ps.executeUpdate();

            if (result > 0) {
                RequestDispatcher rd = request.getRequestDispatcher("adminpanel.jsp");
                rd.forward(request, response);
            } 
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
