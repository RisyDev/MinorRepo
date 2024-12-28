<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Subscription Plans</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <style>
        body {
            background-color: #000;
            color: #fff;
        }
        header .logo h1 {
            font-size: 2.5rem;
            font-weight: bold;
            color: #f44336;
            text-shadow: 2px 2px 5px rgba(255, 0, 0, 0.6);
        }
        .hero {
            background-color: #111;
            text-align: center;
            padding: 50px 0;
        }
        .subscription-card {
            background-color: #222;
            border: 1px solid #444;
            border-radius: 10px;
            padding: 30px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s;
        }
        .subscription-card:hover {
            transform: translateY(-10px);
        }
        .subscription-card h3 {
            font-size: 2rem;
            color: #f44336;
        }
        .subscription-card p {
            font-size: 1.1rem;
            color: #ddd;
        }
        .subscription-card .price {
            font-size: 2.5rem;
            font-weight: bold;
            color: #f44336;
            margin: 20px 0;
        }
        .subscription-card .btn {
            background-color: #f44336;
            border: none;
            padding: 12px 20px;
            color: #fff;
            font-size: 1.1rem;
            border-radius: 5px;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }
        .subscription-card .btn:hover {
            background-color: #d32f2f;
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

    <!-- Header -->
    <header class="d-flex justify-content-between align-items-center p-3 bg-black">
        <div class="logo">
            <h1 class="m-0">Minor<span class="text-white">Cut</span></h1>
        </div>
        <nav>
            <ul class="nav">
                <li class="nav-item"><a href="login&signup.jsp" class="btn btn-danger">Log out</a></li>
            </ul>
        </nav>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <h1 class="mb-3">Choose Your Subscription Plan</h1>
        <p>Get access to exclusive content with one of our affordable plans!</p>
    </section>

    <!-- Subscription Plans -->
    <div class="container">
        <div class="row justify-content-center g-4">
            <!-- Standard Plan -->
            <div class="col-md-4 col-sm-6">
                <div class="subscription-card">
                    <h3>Standard</h3>
                    <p>Access to all basic content.</p>
                    <div class="price">$9.99 / month</div>
                    <ul class="list-unstyled">
                        <li><i class="bi bi-check-circle"></i> 1080p Streaming</li>
                        <li><i class="bi bi-check-circle"></i> Limited Access to Premium Content</li>
                        <li><i class="bi bi-check-circle"></i> Ad-Supported</li>
                    </ul>
                    <a href="subscribe.jsp" class="btn">Subscribe Now</a>
                </div>
            </div>

            <!-- Premium Plan -->
            <div class="col-md-4 col-sm-6">
                <div class="subscription-card">
                    <h3>Premium</h3>
                    <p>Access to all content with enhanced features.</p>
                    <div class="price">$19.99 / month</div>
                    <ul class="list-unstyled">
                        <li><i class="bi bi-check-circle"></i> 4K Streaming</li>
                        <li><i class="bi bi-check-circle"></i> All Premium Content</li>
                        <li><i class="bi bi-check-circle"></i> Ad-Free Experience</li>
                        <li><i class="bi bi-check-circle"></i> Exclusive Early Releases</li>
                    </ul>
                    <a href="subscribe.jsp" class="btn">Subscribe Now</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="mt-4">
        <p>&copy; 2024 MinorCut. All rights reserved.</p>
    </footer>

    <!-- Bootstrap JS & Popper -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
