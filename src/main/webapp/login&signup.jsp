<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MinorCut Sign In / Sign Up</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <style>
        body {
            background-color: #000;
            color: #fff;
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 500px;
            padding: 40px;
            background-color: #111;
            border-radius: 10px;
            margin-top: 100px;
        }

        .form-title {
            text-align: center;
            margin-bottom: 30px;
            font-size: 2rem;
            font-weight: bold;
            color: #e74c3c;
        }

        .form-control {
            border-radius: 5px;  /* Reduced border-radius */
            margin-bottom: 15px;
        }

        .btn-danger {
            width: 100%;
            padding: 15px;
            border-radius: 5px;  /* Adjusted border-radius for button */
            font-size: 18px;
        }

        .text-center {
            font-size: 0.9rem;
            color: #ccc;
        }

        .text-center a {
            color: #e74c3c;
            text-decoration: none;
        }

        .text-center a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- Main Container -->
    <div class="container">

        <!-- Sign In Form -->
        <div id="signInForm" class="form-section">
            <h2 class="form-title">Sign In to MinorCut</h2>
            <form action="signinServlet" >
                <!-- Username Input -->
                <div class="mb-3">
                    <label for="text" class="form-label">Username</label>
                    <input type="text" name="txtName" class="form-control" placeholder="Enter Username" required>
                </div>

                <!-- Password Input -->
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" name="txtPwd" class="form-control" id="password" placeholder="Enter your password" required>
                </div>

                <!-- Sign In Button -->
                <button type="submit" class="btn btn-danger" name="Login">Sign In</button>
            </form>

            <!-- Footer Text -->
            <div class="text-center mt-3">
                <p>Don't have an account? <a href="javascript:void(0);" onclick="toggleForm()">Sign Up</a></p>
            </div>
        </div>

        <!-- Sign Up Form -->
        <div id="signUpForm" class="form-section" style="display: none;">
            <h2 class="form-title">Create Your MinorCut Account</h2>
            <form action="signupServlet">
                <!-- Username Input -->
                <div class="mb-3">
                    <label for="text" class="form-label">Username</label>
                    <input type="text" name="txtName" class="form-control" placeholder="Enter Username" required>
                </div>


                <!-- Password Input -->
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" name="txtPwd" class="form-control" id="password" placeholder="Enter your password" required>
                </div>


                <!-- Sign Up Button -->
                <button type="submit" class="btn btn-danger" name="SignUp">Sign Up</button>
            </form>

            <!-- Footer Text -->
            <div class="text-center mt-3">
                <p>Already have an account? <a href="javascript:void(0);" onclick="toggleForm()">Sign In</a></p>
            </div>
        </div>

    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Custom JavaScript to Toggle Between Forms -->
    <script>
        function toggleForm() {
            var signInForm = document.getElementById('signInForm');
            var signUpForm = document.getElementById('signUpForm');

            if (signInForm.style.display === 'none') {
                signInForm.style.display = 'block';
                signUpForm.style.display = 'none';
            } else {
                signInForm.style.display = 'none';
                signUpForm.style.display = 'block';
            }
        }
    </script>

</body>
</html>
