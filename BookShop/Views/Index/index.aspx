<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BookShop.Views.Index.index" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Next Chapter</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/Index.css">

    <link rel="apple-touch-icon" sizes="180x180" href="favicon_io/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="favicon_io/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="favicon_io/favicon-16x16.png">
<link rel="manifest" href="favicon_io/site.webmanifest">
</head>
<body>

<!-- header section starts  -->

<header class="header">

    <div class="header-1">

        <a href="#" class="logo"> <i class="fas fa-book"></i>The Next Chapter</a>

        <form action="" class="search-form">
            <input type="search" name="" placeholder="search here..." id="search-box">
            <label for="search-box" class="fas fa-search"></label>
        </form>

        <div class="icons">
            <div id="search-btn" class="fas fa-search"></div>
            <a href="./cart.html" class="fas fa-shopping-cart"></a>
            <div id="login-btn" class="fas fa-user"></div>
        </div>

    </div>

    <div class="header-2">
        <nav class="navbar">
            <a href="./index.html">home</a>
            <a href="#featured">featured</a>
            <a href="#">category</a>
            <a href="#reviews">reviews</a>
            <a href="./feedback.html">feedback</a>
        </nav>
    </div>

</header>

<!-- header section ends -->

<!-- bottom navbar  -->

<nav class="bottom-navbar">
    <a href="#home" class="fas fa-home"></a>
    <a href="#featured" class="fas fa-list"></a>
    <a href="#arrivals" class="fas fa-tags"></a>
    <a href="#reviews" class="fas fa-comments"></a>
    <a href="#feedback" class="fas fa-feedback"></a>
</nav>

<!-- login form  -->

<div class="login-form-container">

    <div id="close-login-btn" class="fas fa-times"></div>

    <form action="">
        <h3>sign in</h3>
        <span>username</span>
        <input type="email" name="" class="box" placeholder="enter your email" id="">
        <span>password</span>
        <input type="password" name="" class="box" placeholder="enter your password" id="">
        <div class="checkbox">
            <input type="checkbox" name="" id="remember-me">
            <label for="remember-me"> remember me</label>
        </div>
        <input type="submit" value="sign in" class="btn">
        <p>forget password ? <a href="#">click here</a></p>
        <p>don't have an account ? <a href="#">create one</a></p>
    </form>

</div>

<!-- home section starts  -->

<section class="home" id="home">

    <div class="row">

        <div class="content">
            <h3>upto 75% off</h3>
            <p>Step into the captivating world of anime and manga with our vast collection of books and series. Immerse yourself in thrilling adventures, heartfelt stories, and intricate worlds created by talented artists and writers.Start your adventure today and let the magic of anime and manga transport you to new realms of imagination.</p>
            <a href="#" class="btn">shop now</a>
        </div>

        <div class="swiper books-slider">
            <div class="swiper-wrapper">
                <a href="#" class="swiper-slide"><img src="../../Assets/Images/img1.jpeg" />></a>
                <a href="#" class="swiper-slide"><img src="../../Assets/Images/img2.jpeg" />></a>
                <a href="#" class="swiper-slide"><img src="../../Assets/Images/img3.jpeg" /></a>
                <a href="#" class="swiper-slide"><img src="../../Assets/Images/img5.jpeg" /></a>
                <a href="#" class="swiper-slide"><img src="../../Assets/Images/img4.jpeg" /></a>
                <a href="#" class="swiper-slide"><img src="../../Assets/Images/img6.jpeg" /></a>
            </div>
            <img src="https://raw.githubusercontent.com/KordePriyanka/Books4MU-Book-Store-Website-/main/image/stand.png" class="stand" alt="">
        </div>

    </div>

</section>

<!-- home section ense  -->

<!-- icons section starts  -->

<section class="icons-container">

    <div class="icons">
        <i class="fas fa-shipping-fast"></i>
        <div class="content">
            <h3>free shipping</h3>
            <p>order over $100</p>
        </div>
    </div>

    <div class="icons">
        <i class="fas fa-lock"></i>
        <div class="content">
            <h3>secure payment</h3>
            <p>100 secure payment</p>
        </div>
    </div>

    <div class="icons">
        <i class="fas fa-redo-alt"></i>
        <div class="content">
            <h3>easy returns</h3>
            <p>10 days returns</p>
        </div>
    </div>

    <div class="icons">
        <i class="fas fa-headset"></i>
        <div class="content">
            <h3>24/7 support</h3>
            <p>call us anytime</p>
        </div>
    </div>

</section>

<!-- icons section ends -->

<!-- featured section starts  -->

<section class="featured" id="featured">

    <h1 class="heading"> <span>featured books</span> </h1>

    <div class="swiper featured-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="image">
                   <a href="./product.html"> <img src="../../Assets/Images/chainsaw man vol.12.jpg" alt=""> </a>
                </div>
                <div class="content">
                    <h3>featured books</h3>
                    <div class="price">$15.99 <span>$20.99</span></div>
                    <a href="./cart.html" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <a href="./product.html"> <img src="../../Assets/Images/pokemon.jpg" alt=""> </a>
                </div>
                <div class="content">
                    <h3>featured books</h3>
                    <div class="price">$15.99 <span>$20.99</span></div>
                    <a href="./cart.html" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <a href="product.html"><img src="../../Assets/Images/spy x family,vol. 10.jpg" alt=""> </a>
                </div>
                <div class="content">
                    <h3>featured books</h3>
                    <div class="price">$15.99 <span>$20.99</span></div>
                    <a href="./cart.html" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../../Assets/Images/one piece.jpg" alt="">
                </div>
                <div class="content">
                    <h3>featured books</h3>
                    <div class="price">$15.99 <span>$20.99</span></div>
                    <a href="./cart.html" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../../Assets/Images/my hero academia.jpg" alt="">
                </div>
                <div class="content">
                    <h3>featured books</h3>
                    <div class="price">$15.99 <span>$20.99</span></div>
                    <a href="./cart.html" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../../Assets/Images/dragon ball.jpg" alt="">
                </div>
                <div class="content">
                    <h3>featured books</h3>
                    <div class="price">$15.99 <span>$20.99</span></div>
                    <a href="./cart.html" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../../Assets/Images/berserk volume 11.jpeg" alt="">
                </div>
                <div class="content">
                    <h3>featured books</h3>
                    <div class="price">$15.99 <span>$20.99</span></div>
                    <a href="./cart.html" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../../Assets/Images/jujutsu kaisen vol.4.jpeg" alt="">
                </div>
                <div class="content">
                    <h3>featured books</h3>
                    <div class="price">$15.99 <span>$20.99</span></div>
                    <a href="./cart.html" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../../Assets/Images/one piece vol.1.jpg" alt="">
                </div>
                <div class="content">
                    <h3>featured books</h3>
                    <div class="price">$15.99 <span>$20.99</span></div>
                    <a href="./cart.html" class="btn">add to cart</a>
                </div>
            </div>

            <div class="swiper-slide box">
                <div class="icons">
                    <a href="#" class="fas fa-search"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <div class="image">
                    <img src="../../Assets/Images/your name.jpeg" alt="">
                </div>
                <div class="content">
                    <h3>featured books</h3>
                    <div class="price">$15.99 <span>$20.99</span></div>
                    <a href="./cart.html" class="btn">add to cart</a>
                </div>
            </div>

        </div>

        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>

    </div>

</section>

<!-- featured section ends -->

<!-- newsletter section starts -->

<section class="newsletter">

    <form action="">
        <h3>subscribe for latest updates</h3>
        <input type="email" name="" placeholder="enter your email" id="" class="box">
        <input type="submit" value="subscribe" class="btn">
    </form>

</section>

<!-- newsletter section ends -->

<!-- category section starts  -->

<section class="arrivals" id="arrivals">

    <h1 class="heading"> <span>Category</span> </h1>

    <div class="swiper arrivals-slider">

        <div class="swiper-wrapper">

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="../../Assets/Images/The_Ancient_Magus'_Bride,_volume_1.jpg" alt="">
                </div>
                <div class="content">
                    <h3>Fantasy</h3>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="../../Assets/Images/AKIRA_(1988_poster).jpg" alt="">
                </div>
                <div class="content">
                    <h3>Sci-Fi</h3>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="../../Assets/Images/Silver_Spoon_(manga)_1.png" alt="">
                </div>
                <div class="content">
                    <h3>Slice of Life</h3>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="../../Assets/Images/Death_Note_Vol_1.jpg" alt="">
                </div>
                <div class="content">
                    <h3>Horror</h3>
                </div>
            </a>

        </div>

    </div>

    <div class="swiper arrivals-slider">

        <div class="swiper-wrapper">

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="../../Assets/Images/Case_Closed_Volume_36.png" alt="">
                </div>
                <div class="content">
                    <h3>Mystery</h3>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="../../Assets/Images/sword art.jpeg" alt="">
                </div>
                <div class="content">
                    <h3>Isekai</h3>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="../../Assets/Images/tokyo ghoul.jpeg" alt="">
                </div>
                <div class="content">
                    <h3>Seinen</h3>
                </div>
            </a>

            <a href="#" class="swiper-slide box">
                <div class="image">
                    <img src="../../Assets/Images/dragon ball1.jpeg" alt="">
                </div>
                <div class="content">
                    <h3>Shonen</h3>
                </div>
            </a>

        </div>

    </div>

</section>

<!-- category section ends -->

<!-- deal section starts  -->

<section class="deal">

    <div class="content">
        <h3>deal of the day</h3>
        <h1>upto 50% off</h1>
        <p>Checkout before this deal expires at midnight.</p>
        <a href="#" class="btn">shop now</a>
    </div>

    <div class="image">
        <img src="https://raw.githubusercontent.com/KordePriyanka/Books4MU-Book-Store-Website-/main/image/deal-img.jpg" alt="">
    </div>

</section>

<!-- deal section ends -->

<!-- reviews section starts  -->

<section class="reviews" id="reviews">

    <h1 class="heading"> <span>client's reviews</span> </h1>

    <div class="swiper reviews-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <img src="https://raw.githubusercontent.com/KordePriyanka/Books4MU-Book-Store-Website-/main/image/pic-1.png" alt="">
                <h3>ujjwal </h3>
                <p>First of all it customer service is excellent. We get all author book for Mumbai University. People should try here affordable and best price.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="https://raw.githubusercontent.com/KordePriyanka/Books4MU-Book-Store-Website-/main/image/pic-2.png" alt="">
                <h3>marry </h3>
                <p>Best book store almost all books are available for prepartion of exam related or other books are available on reaonable price also.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="https://raw.githubusercontent.com/KordePriyanka/Books4MU-Book-Store-Website-/main/image/pic-3.png" alt="">
                <h3>Raghu </h3>
                <p>Customer Service is good. Greetings to customer and making the required Books available to Customers is very good.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>
            <div class="swiper-slide box">
                <img src="https://raw.githubusercontent.com/KordePriyanka/Books4MU-Book-Store-Website-/main/image/pic-4.png" alt="">
                <h3>Pooja </h3>
                <p>This book centre have large amount of a books. The engineering study material all semester books are available.then the peacefull and nice book centre.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="https://raw.githubusercontent.com/KordePriyanka/Books4MU-Book-Store-Website-/main/image/pic-5.png" alt="">
                <h3>Abhinav </h3>
                <p>I migrated to the online platform on Just books because I was finding it difficult to go to their libraries before closing time.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="https://raw.githubusercontent.com/KordePriyanka/Books4MU-Book-Store-Website-/main/image/pic-6.png" alt="">
                <h3>Sidddhi </h3>
                <p>I love the product because it is very easy to find. The book are in really organized manner you can easily find the book you want.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

        </div>

    </div>

</section>

<!-- reviews section ends -->

<!-- feedback section starts  -->

<section class="blogs" id="blogs">

    <h1 class="heading"> <span>feedback</span> </h1>

    <section class="newsletter">

        <form action="">
            <h3>give your feedback here...</h3>
            <a href="./feedback.html" class="btn">Feedback</a>
            <!-- <a href="./feedback.html"><input type="submit" value="feedback"> -->
            </a>
        </form>

    </section>
</section>

<!-- feedback section ends -->

<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>our locations</h3>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> india </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> USA </a>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="./index.html"> <i class="fas fa-arrow-right"></i> home </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> featured </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> Category </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> reviews </a>
            <a href="./feedback.html"> <i class="fas fa-arrow-right"></i> feedback </a>
        </div>

        <div class="box">
            <h3>extra links</h3>
            <a href="#"> <i class="fas fa-arrow-right"></i> account info </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> ordered items </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> privacy policy </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> payment method </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> our serivces </a>
        </div>

        <div class="box">
            <h3>contact info</h3>
            <a href="#"> <i class="fas fa-phone"></i> 8698004318 </a>
            <a href="#"> <i class="fas fa-envelope"></i> komaljpatil121@gmail.com </a>
            <img src="../../Assets/Images/worldmap.png" class="map" alt="">
        </div>

    </div>

    <div class="share">
        <a href="#" class="fab fa-facebook-f"></a>
        <a href="https://twitter.com/priyankakorde" class="fab fa-twitter"></a>
        <a href="https://www.instagram.com/im_priyankak_/" class="fab fa-instagram"></a>
        <a href="https://www.linkedin.com/in/komal-patil-71239926b" class="fab fa-linkedin"></a>
    
    </div>

    <div class="credit"> created by <span>Komal Patil </span>copyright ©2022 all rights reserved! </div>

</section>

<!-- footer section ends -->

<!-- loader  -->

<div class="loader-container">
  <div class="tenor-gif-embed" data-postid="21225821" data-share-method="host" data-aspect-ratio="1" data-width="40%"><a href="https://tenor.com/view/goodgoodgeneral-mental-health-mental-health-action-day-patience-self-care-gif-21225821">Goodgoodgeneral Mental Health GIF</a>from <a href="https://tenor.com/search/goodgoodgeneral-gifs">Goodgoodgeneral GIFs</a></div> <script type="text/javascript" async src="https://tenor.com/embed.js"></script>
</div>


<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/index.js"></script>

</body>
</html>