<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MinorCut Admin Panel</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <style>
        body {
            background-color: #111;
            color: #fff;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
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
        .admin-panel {
            padding: 50px 30px;
            max-width: 1200px;
            margin: 30px auto;
            border-radius: 10px;
            background: rgba(0, 0, 0, 0.7);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.5);
        }
        .admin-options button {
            width: 100%;
            padding: 15px;
            margin-bottom: 15px;
            background-color: #e74c3c;
            border: none;
            color: #fff;
            font-size: 18px;
            border-radius: 10px;
            transition: transform 0.3s ease, background-color 0.3s ease;
        }
        .admin-options button:hover {
            background-color: #c0392b;
            transform: translateY(-5px);
        }
        .admin-content {
            margin-top: 30px;
        }
        .admin-content h4 {
            color: #f44336;
            margin-bottom: 20px;
        }
        .form-control, .btn {
            border-radius: 8px;
        }
        .form-control:focus {
            border-color: #f44336;
            box-shadow: 0 0 5px rgba(244, 67, 54, 0.5);
        }
        footer {
            background-color: #111;
            color: #777;
            padding: 10px 0;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        .signout-btn {
            background-color: #f44336;
            padding: 12px 20px;
            color: white;
            border: none;
            font-size: 18px;
            cursor: pointer;
            width: 100%;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }
        .signout-btn:hover {
            background-color: #c0392b;
        }
        .logo span {
            color: #e74c3c;
        }
        .card {
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 12px;
            background-color: rgba(0, 0, 0, 0.6);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            padding: 20px;
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Minor<span class="text-white">Cut</span></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>

    <!-- Admin Panel Section -->
    <div class="container admin-panel">
        <h2 class="text-center mb-5">Welcome to MinorCut Admin Panel</h2>

        <!-- Admin Options (Add Movies, View Users, Go to Homepage) -->
        <div class="admin-options">
            <button onclick="showAddMovieForm()">Add Movies</button>
            <button onclick="viewUsers()">View Users</button>
            <button onclick="goToHomepage()">Go to Homepage</button>
        </div>

        <!-- Admin Content -->
        <div id="adminContent" class="admin-content">
            <!-- Add Movies Form (hidden by default) -->
            <div id="addMovieForm" style="display: none;">
                <h4>Add New Movie</h4>
                <form action="addMovieServlet">
                    <div class="mb-3">
                        <label for="movieName" class="form-label">Movie Name</label>
                        <input type="text" name="movieName" class="form-control" placeholder="Enter movie name" required>
                    </div>
                    <div class="mb-3">
                        <label for="movieDescription" class="form-label">Description</label>
                        <textarea name="movieDescription" class="form-control" rows="4" placeholder="Enter movie description" required></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="movieImage" class="form-label">Movie Image URL</label>
                        <input type="text" name="movieImage" class="form-control" placeholder="Enter image URL" required>
                    </div>
                    <div class="mb-3">
                        <label for="movieLink" class="form-label">Movie Link</label>
                        <input type="text" name="movieLink" class="form-control" placeholder="Enter movie link" required>
                    </div>
                    <button type="submit" class="btn btn-danger">Add Movie</button>
                </form>
            </div>

            <!-- View Users (Placeholder) -->
            <div id="viewUsers" style="display: none;">
                <h4>View Users</h4>
                <div class="card">
                    <p>Here, admin can view registered users (this is a placeholder).</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Sign Out Button above Footer -->
    <div class="container">
        <button class="signout-btn" onclick="signOut()">Sign Out</button>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 MinorCut. All rights reserved.</p>
    </footer>

    <!-- Bootstrap JS & Popper -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

    <!-- Custom JavaScript -->
    <script>
        function signOut() {
            // Logic for sign out
            alert('Signed out successfully!');
            // Redirect to the login page or clear session if needed
            window.location.href = 'login&signup.jsp';
        }

        function showAddMovieForm() {
            // Hide all content sections
            document.getElementById('addMovieForm').style.display = 'block';
            document.getElementById('viewUsers').style.display = 'none';
        }

        function viewUsers() {
            // Hide all content sections
            document.getElementById('addMovieForm').style.display = 'none';
            document.getElementById('viewUsers').style.display = 'block';
        }

        function goToHomepage() {
            // Redirect to the homepage
            window.location.href = 'showMovies.jsp';
        }
    </script>

</body>
</html>
