<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Subscription Plans - MinorCut</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <style>
        body {
            background-color: #111;
            color: #fff;
            font-family: Arial, sans-serif;
        }
        .navbar {
            background-color: #000;
        }
        .navbar .navbar-brand {
            font-size: 2rem;
            color: #f44336;
            font-weight: bold;
        }
        .plan-card {
            background-color: #1a1a1a;
            border: 1px solid #333;
            border-radius: 10px;
            padding: 20px;
            margin: 15px 0;
        }
        .plan-card h4 {
            font-size: 24px;
            color: #f44336;
            font-weight: bold;
        }
        .plan-card p {
            font-size: 18px;
            color: #ccc;
        }
        .plan-card .price {
            font-size: 32px;
            color: #e74c3c;
            margin-top: 10px;
        }
        .plan-card .btn {
            width: 100%;
            padding: 12px;
            font-size: 18px;
            margin-top: 15px;
        }
        .plan-card .btn:hover {
            background-color: #c0392b;
        }
        footer {
            background-color: #111;
            color: #777;
            padding: 10px 0;
            text-align: center;
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

    <!-- Subscription Section -->
    <div class="container mt-5">
        <h2 class="text-center mb-5">Choose Your Subscription Plan</h2>

        <!-- Standard Plan Card -->
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="plan-card">
                    <h4>Standard Plan</h4>
                    <p>Enjoy basic features with limited access to our content library.</p>
                    <div class="price">$9.99/month</div>
                    <ul class="list-unstyled">
                        <li>Access to basic content</li>
                        <li>Standard streaming quality</li>
                        <li>Limited movie library</li>
                    </ul>
                    <button class="btn btn-danger" onclick="selectPlan('Standard')">Choose Plan</button>
                </div>
            </div>

            <!-- Premium Plan Card -->
            <div class="col-md-4">
                <div class="plan-card">
                    <h4>Premium Plan</h4>
                    <p>Get unlimited access to all premium content with superior streaming quality.</p>
                    <div class="price">$19.99/month</div>
                    <ul class="list-unstyled">
                        <li>Access to all content</li>
                        <li>High-definition streaming</li>
                        <li>Exclusive premium content</li>
                    </ul>
                    <button class="btn btn-danger" onclick="selectPlan('Premium')">Choose Plan</button>
                </div>
            </div>
        </div>

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
        function selectPlan(planType) {
            // Logic for selecting a plan
            if (planType === 'Standard') {
                alert('You have selected the Standard Plan. Proceeding to movies.');
            } else if (planType === 'Premium') {
                alert('You have selected the Premium Plan. Proceeding to movies.');
            }

            // Redirect to showMovies.jsp after selecting the plan
            window.location.href = 'showMovies.jsp';  // Redirect to showMovies.jsp
        }
    </script>

</body>
</html>
