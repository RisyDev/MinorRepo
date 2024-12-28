<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show Movies - MinorCut</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <style>
        body {
            background-color: #111;
            color: #fff;
            font-family: Arial, sans-serif;
        }
        h1 {
            text-align: center;
            color: #f44336;
            margin: 20px 0;
        }
        .navbar {
            background-color: #000;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
        }
        .navbar .navbar-brand {
            font-size: 2rem;
            color: #f44336;
            font-weight: bold;
            letter-spacing: 1px;
        }
        .navbar .navbar-nav .nav-link {
            color: #fff !important;
            font-weight: bold;
            padding: 0.5rem 1rem;
        }
        .movie-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
        }
        .movie-card {
            background-color: #1a1a1a;
            border: 1px solid #333;
            border-radius: 10px;
            width: 300px;
            text-align: center;
            padding: 15px;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .movie-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 20px rgba(255, 68, 68, 0.3);
        }
        .movie-card img {
            max-width: 100%;
            border-radius: 10px;
            margin-bottom: 10px;
        }
        .movie-card h3 {
            font-size: 1.5rem;
            color: #f44336;
            margin: 10px 0;
        }
        .movie-card p {
            font-size: 1rem;
            color: #ccc;
            margin-bottom: 10px;
        }
        .movie-card a {
            display: inline-block;
            text-decoration: none;
            color: #fff;
            background-color: #f44336;
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s;
        }
        .movie-card a:hover {
            background-color: #c0392b;
        }
        footer {
            background-color: #000;
            color: #777;
            padding: 10px 0;
            text-align: center;
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Minor<span class="text-white">Cut</span></a>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="adminpanel.jsp">Admin Panel</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <h1>Featured Movies</h1>

    <div class="movie-container">
        <% 
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;

            try {
                // Load database driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Connect to the database
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/minorcut", "root", "@Risy2000");

                // Fetch movies
                String sql = "SELECT * FROM movies";
                stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);

                // Display movies dynamically
                while (rs.next()) {
        %>
            <div class="movie-card">
                <img src="<%= rs.getString("image_url") %>" alt="<%= rs.getString("movie_name") %>">
                <h3><%= rs.getString("movie_name") %></h3>
                <p><%= rs.getString("description") %></p>
                <a href="<%= rs.getString("movie_link") %>" target="_blank">Watch Now</a>
            </div>
        <% 
                }
            } catch (Exception e) {
                e.printStackTrace();
        %>
            <p>Error: <%= e.getMessage() %></p>
        <%
            } finally {
                if (rs != null) try { rs.close(); } catch (SQLException ex) { ex.printStackTrace(); }
                if (stmt != null) try { stmt.close(); } catch (SQLException ex) { ex.printStackTrace(); }
                if (conn != null) try { conn.close(); } catch (SQLException ex) { ex.printStackTrace(); }
            }
        %>
    </div>

    <footer>
        <p>&copy; 2024 MinorCut. All rights reserved.</p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
