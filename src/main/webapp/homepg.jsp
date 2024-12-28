<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MinorCut Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <style>
        body {
            background-color: #000;
            color: #fff;
        }
        header .logo h1 {
	    	font-size: 1.8rem;
		}
		
		header .nav-link {
		    color: #fff !important;
		    font-weight: bold;
		}
	        
        
        .hero {
		    background-image: url(''); 
		    background-position: center;
		    color: white;
		    padding: 20px 20px; /* Adjusted padding to reduce height */
		    text-align: center;
		    height: 70vh; /* Reduced height from 100vh to 70vh */
        }
        .category-btn {
            border: 1px solid #fff;
            margin: 5px;
            color: #fff;
        }
        .card img {
		    width: 100%; 
		    height: 200px; 
		    object-fit: contain;
		    background-color: #000; 
		}

        .watch-more-btn {
            background-color: rgb(206, 69, 70);
            border: none;
            padding: 15px 30px;
            font-size: 18px;
            color: white;
            margin-top: 20px;
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
            <h1 class="m-0 text-danger">Minor<span class="text-white">Cut</span></h1>
        </div>
  <!--      <nav>
            <ul class="nav">
                <li class="nav-item"><a href="#" class="nav-link text-white">Home</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-white">TV Series</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-white">Movies</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-white">Anime</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-white">Genre</a></li>
                <li class="nav-item"><a href="#" class="nav-link text-white">Year</a></li>
            </ul>
        </nav> -->
        <a href="login&signup.jsp" class="btn btn-danger">Sign In</a>
    </header>

    <!-- Hero Section -->
    <section id="heroCarousel" class="hero carousel slide" data-bs-ride="carousel">
    <!-- Carousel Indicators -->
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="3" aria-label="Slide 3"></button>
                
    </div>

    <!-- Carousel Items -->
    <div class="carousel-inner">
        <!-- Slide 1 -->
        <div class="carousel-item active">
            <div class="hero d-flex align-items-center justify-content-center text-center" style="background: url('images/hellboy.jpg') center/cover no-repeat; height: 100vh;">
                <div>
                    <h1>HELLBOY</h1>
                    <p>unimaginable creature on a misson...</p>
                    <a href="#" class="btn btn-danger">WATCH NOW</a>
                </div>
            </div>
        </div>

        <!-- Slide 2 -->
        <div class="carousel-item">
            <div class="hero d-flex align-items-center justify-content-center text-center" style="background: url('images/IT.jpg') center/cover no-repeat; height: 100vh;">
                <div>
                    <h1>IT</h1>
                    <p>A reimagining of the Arthurian horror, told through the eyes of a young gens...</p>
                    <a href="#" class="btn btn-danger">WATCH NOW</a>
                </div>
            </div>
        </div>

        <!-- Slide 3 -->
        <div class="carousel-item">
            <div class="hero d-flex align-items-center justify-content-center text-center" style="background: url('images/onepiece.jpg') center/cover no-repeat; height: 100vh;">
                <div>
                    <h1>ONE PIECE</h1>
                    <p>A young boy on misson to be the Pitate King...</p>
                    <a href="https://hianime.to/watch/one-piece-100?ep=2142" class="btn btn-danger">WATCH NOW</a>
                </div>
            </div>
        </div>

        <div class="carousel-item">
            <div class="hero d-flex align-items-center justify-content-center text-center" style="background: url('images/itachi.jpg') center/cover no-repeat; height: 100vh;">
                <div>
                    <h1>NARUTO</h1>
                    <p>A young dude trained to be the ultimate Ninja...</p>
                    <a href="https://hianime.to/watch/naruto-shippuden-355?ep=7882" class="btn btn-danger">WATCH NOW</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Carousel Controls -->
    <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</section>

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    <!-- Categories -->
    <div class="container text-center mt-5">
        <button class="btn category-btn">Action</button>
        <button class="btn category-btn">Adventure</button>
        <button class="btn category-btn">Sci-Fi</button>
        <button class="btn category-btn">Crime</button>
    </div>

    <!-- Content Section -->
    <div class="container my-5">
        <div class="row g-4">
            <!-- Card 1 -->
            <div class="col-md-3">
                <div class="card bg-dark text-white">
                    <img src="images\batman.webp" class="card-img-top" alt="Batman">
                    <div class="card-body">
                        <h5 class="card-title">Batman</h5>
                        <p class="card-text"></p>
                        <a href="#" class="btn btn-danger btn-sm">More Information</a>
                    </div>
                </div>
            </div>
            <!-- Card 2 -->
            <div class="col-md-3">
                <div class="card bg-dark text-white">
                    <img src="images\morbius.webp" class="card-img-top" alt="morbius">
                    <div class="card-body">
                        <h5 class="card-title">Morbius</h5>
                        <p class="card-text"></p>
                        <a href="#" class="btn btn-danger btn-sm">More Information</a>
                        
                    </div>
                </div>
            </div>
            <!-- Card 3 -->
            <div class="col-md-3">
                <div class="card bg-dark text-white">
                    <img src="images\dune.webp" class="card-img-top" alt="Dune">
                    <div class="card-body">
                        <h5 class="card-title">Dune</h5>
                        <p class="card-text"></p>
                        <a href="#" class="btn btn-danger btn-sm">More Information</a>
                    </div>
                </div>
            </div>
            <!-- Card 4 -->
            <div class="col-md-3">
                <div class="card bg-dark text-white">
                    <img src="images\geostorm.webp" class="card-img-top" alt="Geostrom">
                    <div class="card-body">
                        <h5 class="card-title">Geostorm</h5>
                        <p class="card-text"> </p>
                        <a href="#" class="btn btn-danger btn-sm">More Information</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Watch Now Button -->
    <div class="text-center">
        <button class="watch-more-btn rounded">Watch more</button>
    </div>
    <br>

    <!-- Footer -->
    
    <!--  
    <footer>
        <div class="container">
            <p>Disclaimer: Contents on this website are for promotional purposes only...</p>
            <p>Contact us if you have any issues or concerns.</p>
            <div>
                <a href="#"><img src="facebook-icon.png" alt="" class="me-2"></a>
                <a href="#"><img src="instagram-icon.png" alt="" class="me-2"></a>
                <a href="#"><img src="youtube-icon.png" alt=""></a>
            </div>
        </div>
    </footer> -->

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        document.querySelector('.watch-more-btn').addEventListener('click', function () {
    const container = document.querySelector('.container.my-5'); // Target the content section

    // Ensure the button works only once
    if (this.dataset.clicked === "true") return;
    this.dataset.clicked = "true";

    // Function to create a row of cards
    function createRow() {
        const row = document.createElement('div'); // Create a new row
        row.className = 'row g-4 '; // Add Bootstrap spacing classes for rows (g-4 for gutter, mb-4 for bottom margin)

        // Generate 4 cards for the row
        for (let i = 0; i < 4; i++) {
            const col = document.createElement('div');
            col.className = 'col-md-3'; // Bootstrap column size

            // Card structure
            col.innerHTML = `
                <div class="card bg-dark text-white mt-4">
                    <img src="images/cursed.jpg" class="card-img-top" alt="Card image">
                    <div class="card-body">
                        <h5 class="card-title">Expanded Card ${i + 1}</h5>
                        <p class="card-text">This is additional content.</p>
                        <a href="#" class="btn btn-danger btn-sm">More Information</a>
                    </div>
                </div>`;
            row.appendChild(col); // Append column to the row
        }
        return row;
    }

    // Append two rows with spacing
    container.appendChild(createRow());
    container.appendChild(createRow());

    // Optionally hide the button after expansion
    this.style.display = 'none';
});

    </script>
    
    
    
</body>
</html>