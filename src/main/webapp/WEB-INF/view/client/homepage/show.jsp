<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta content="width=device-width, initial-scale=1.0" name="viewport">
                <title>Index - Axis Bootstrap Template</title>
                <meta name="description" content="">
                <meta name="keywords" content="">

                <!-- Favicons -->
                <link href="/client/assets/img/favicon.png" rel="icon">
                <link href="/client/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

                <!-- Fonts -->
                <link href="https://fonts.googleapis.com" rel="preconnect">
                <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
                <link
                    href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
                    rel="stylesheet">

                <!-- Vendor CSS Files -->
                <link href="/client/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
                <link href="/client/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
                <link href="/client/assets/vendor/aos/aos.css" rel="stylesheet">
                <link href="/client/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
                <link href="/client/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

                <!-- Main CSS File -->
                <link href="/client/assets/css/main.css" rel="stylesheet">

                <!-- =======================================================
  * Template Name: Axis
  * Template URL: https://bootstrapmade.com/axis-bootstrap-corporate-template/
  * Updated: Sep 13 2025 with Bootstrap v5.3.8
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
            </head>

            <body class="index-page">

                <header id="header" class="header d-flex align-items-center fixed-top">
                    <div
                        class="container-fluid container-xl position-relative d-flex align-items-center justify-content-between">

                        <a href="index.html" class="logo d-flex align-items-center">
                            <!-- Uncomment the line below if you also wish to use an image logo -->
                            <!-- <img src="/client/assets/img/logo.webp" alt=""> -->
                            <h1 class="sitename">Axis</h1>
                        </a>

                        <nav id="navmenu" class="navmenu">
                            <ul>
                                <li><a href="#hero" class="active">Home</a></li>
                                <li><a href="#about">About</a></li>
                                <li><a href="#services">Services</a></li>
                                <li><a href="#portfolio">Portfolio</a></li>
                                <li><a href="#team">Team</a></li>
                                <li class="dropdown"><a href="#"><span>Dropdown</span> <i
                                            class="bi bi-chevron-down toggle-dropdown"></i></a>
                                    <ul>
                                        <li><a href="#">Dropdown 1</a></li>
                                        <li class="dropdown"><a href="#"><span>Deep Dropdown</span> <i
                                                    class="bi bi-chevron-down toggle-dropdown"></i></a>
                                            <ul>
                                                <li><a href="#">Deep Dropdown 1</a></li>
                                                <li><a href="#">Deep Dropdown 2</a></li>
                                                <li><a href="#">Deep Dropdown 3</a></li>
                                                <li><a href="#">Deep Dropdown 4</a></li>
                                                <li><a href="#">Deep Dropdown 5</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Dropdown 2</a></li>
                                        <li><a href="#">Dropdown 3</a></li>
                                        <li><a href="#">Dropdown 4</a></li>
                                    </ul>
                                </li>
                                <li><a href="#contact">Contact</a></li>
                            </ul>
                            <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
                        </nav>

                    </div>
                </header>

                <main class="main">

                    <!-- Hero Section -->
                    <section id="hero" class="hero section light-background">

                        <div class="container" data-aos="fade-up" data-aos-delay="100">

                            <div class="row align-items-center">
                                <div class="col-lg-6">
                                    <div class="hero-content">
                                        <h1 data-aos="fade-up" data-aos-delay="200">Transform Your Business Vision Into
                                            Reality</h1>
                                        <p data-aos="fade-up" data-aos-delay="300">Lorem ipsum dolor sit amet,
                                            consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et
                                            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                            ullamco laboris.</p>
                                        <div class="hero-cta" data-aos="fade-up" data-aos-delay="400">
                                            <a href="#about" class="btn-primary">Get Started Today</a>
                                            <a href="#https://www.youtube.com/watch?v=Y7f98aduVJ8"
                                                class="btn-secondary glightbox">
                                                <i class="bi bi-play-circle"></i>
                                                Watch Demo
                                            </a>
                                        </div>
                                        <div class="hero-stats" data-aos="fade-up" data-aos-delay="500">
                                            <div class="stat-item">
                                                <div class="stat-number">500+</div>
                                                <div class="stat-label">Successful Projects</div>
                                            </div>
                                            <div class="stat-item">
                                                <div class="stat-number">98%</div>
                                                <div class="stat-label">Client Satisfaction</div>
                                            </div>
                                            <div class="stat-item">
                                                <div class="stat-number">10+</div>
                                                <div class="stat-label">Years Experience</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="hero-image" data-aos="fade-left" data-aos-delay="300">
                                        <img src="/client/assets/img/about/about-square-10.webp" alt="Business Success"
                                            class="img-fluid">
                                        <div class="floating-card" data-aos="zoom-in" data-aos-delay="600">
                                            <div class="card-icon">
                                                <i class="bi bi-graph-up-arrow"></i>
                                            </div>
                                            <div class="card-content">
                                                <h5>Revenue Growth</h5>
                                                <div class="growth-percentage">+45%</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </section><!-- /Hero Section -->

                    <!-- About Section -->
                    <section id="about" class="about section">

                        <!-- Section Title -->
                        <div class="container section-title" data-aos="fade-up">
                            <span class="subtitle">About</span>
                            <h2>About Us</h2>
                            <p>Necessitatibus eius consequatur ex aliquid fuga eum quidem sint consectetur velit. Sed ut
                                perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                                laudantium totam rem aperiam</p>
                        </div><!-- End Section Title -->

                        <div class="container" data-aos="fade-up" data-aos-delay="100">

                            <div class="row align-items-center">
                                <div class="col-lg-6" data-aos="fade-right" data-aos-delay="200">
                                    <div class="content">
                                        <h2>Crafting Excellence Through Innovation and Dedication</h2>
                                        <p class="lead">We are passionate professionals committed to delivering
                                            exceptional results that exceed expectations and drive meaningful
                                            transformation.</p>

                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                            consequat.</p>

                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore
                                            eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
                                            sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

                                        <div class="stats-row">
                                            <div class="stat-item">
                                                <div class="stat-number purecounter" data-purecounter-start="0"
                                                    data-purecounter-end="15" data-purecounter-duration="1"></div>
                                                <div class="stat-label">Years Experience</div>
                                            </div>
                                            <div class="stat-item">
                                                <div class="stat-number purecounter" data-purecounter-start="0"
                                                    data-purecounter-end="850" data-purecounter-duration="1"></div>
                                                <div class="stat-label">Projects Completed</div>
                                            </div>
                                            <div class="stat-item">
                                                <div class="stat-number purecounter" data-purecounter-start="0"
                                                    data-purecounter-end="240" data-purecounter-duration="1"></div>
                                                <div class="stat-label">Happy Clients</div>
                                            </div>
                                        </div>

                                        <div class="cta-section">
                                            <a href="#" team="" class="btn-outline">Meet Our Team</a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6" data-aos="fade-left" data-aos-delay="300">
                                    <div class="image-wrapper">
                                        <img src="/client/assets/img/about/about-square-12.webp" alt="About us"
                                            class="img-fluid">
                                        <div class="floating-card" data-aos="zoom-in" data-aos-delay="500">
                                            <div class="card-content">
                                                <div class="icon">
                                                    <i class="bi bi-award"></i>
                                                </div>
                                                <div class="text">
                                                    <h4>Award Winning</h4>
                                                    <p>Recognized for excellence in our industry</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </section><!-- /About Section -->

                    <!-- Services Section -->
                    <section id="services" class="services section">

                        <!-- Section Title -->
                        <div class="container section-title" data-aos="fade-up">
                            <span class="subtitle">Services</span>
                            <h2>What We Do Offer</h2>
                            <p>Necessitatibus eius consequatur ex aliquid fuga eum quidem sint consectetur velit. Sed ut
                                perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                                laudantium totam rem aperiam</p>
                        </div><!-- End Section Title -->

                        <div class="container" data-aos="fade-up" data-aos-delay="100">

                            <div class="row gy-5">

                                <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="200">
                                    <div class="service-item">
                                        <div class="service-icon">
                                            <i class="bi bi-graph-up-arrow"></i>
                                        </div>
                                        <h3>Strategic Consulting</h3>
                                        <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac
                                            turpis egestas. Vestibulum tortor quam.</p>
                                        <a href="service-details.html" class="service-link">
                                            Learn More <i class="bi bi-arrow-right"></i>
                                        </a>
                                    </div>
                                </div><!-- End Service Item -->

                                <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="300">
                                    <div class="service-item">
                                        <div class="service-icon">
                                            <i class="bi bi-palette"></i>
                                        </div>
                                        <h3>Brand Development</h3>
                                        <p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
                                            minim veniam quis nostrud exercitation.</p>
                                        <a href="service-details.html" class="service-link">
                                            Learn More <i class="bi bi-arrow-right"></i>
                                        </a>
                                    </div>
                                </div><!-- End Service Item -->

                                <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="400">
                                    <div class="service-item">
                                        <div class="service-icon">
                                            <i class="bi bi-code-slash"></i>
                                        </div>
                                        <h3>Digital Solutions</h3>
                                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Mauris vitae congue
                                            nulla. Proin eget tortor risus vestibulum.</p>
                                        <a href="service-details.html" class="service-link">
                                            Learn More <i class="bi bi-arrow-right"></i>
                                        </a>
                                    </div>
                                </div><!-- End Service Item -->

                                <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="200">
                                    <div class="service-item">
                                        <div class="service-icon">
                                            <i class="bi bi-megaphone"></i>
                                        </div>
                                        <h3>Marketing Strategy</h3>
                                        <p>Vivamus magna justo lacinia eget consectetur sed convallis at tellus. Cras
                                            ultricies ligula sed magna dictum porta.</p>
                                        <a href="service-details.html" class="service-link">
                                            Learn More <i class="bi bi-arrow-right"></i>
                                        </a>
                                    </div>
                                </div><!-- End Service Item -->

                                <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="300">
                                    <div class="service-item">
                                        <div class="service-icon">
                                            <i class="bi bi-people"></i>
                                        </div>
                                        <h3>Team Building</h3>
                                        <p>Donec rutrum congue leo eget malesuada. Vestibulum ac diam sit amet quam
                                            vehicula elementum sed sit amet dui.</p>
                                        <a href="service-details.html" class="service-link">
                                            Learn More <i class="bi bi-arrow-right"></i>
                                        </a>
                                    </div>
                                </div><!-- End Service Item -->

                                <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="400">
                                    <div class="service-item">
                                        <div class="service-icon">
                                            <i class="bi bi-bar-chart"></i>
                                        </div>
                                        <h3>Data Analytics</h3>
                                        <p>Nulla porttitor accumsan tincidunt. Mauris blandit aliquet elit eget
                                            tincidunt nibh pulvinar a. Sed porttitor lectus nibh.</p>
                                        <a href="service-details.html" class="service-link">
                                            Learn More <i class="bi bi-arrow-right"></i>
                                        </a>
                                    </div>
                                </div><!-- End Service Item -->

                            </div>

                        </div>

                    </section><!-- /Services Section -->

                    <!-- Why Us Section -->
                    <section id="why-us" class="why-us section">

                        <!-- Section Title -->
                        <div class="container section-title" data-aos="fade-up">
                            <span class="subtitle">Why Us</span>
                            <h2>Why Choose Us</h2>
                            <p>Necessitatibus eius consequatur ex aliquid fuga eum quidem sint consectetur velit. Sed ut
                                perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                                laudantium totam rem aperiam</p>
                        </div><!-- End Section Title -->

                        <div class="container" data-aos="fade-up" data-aos-delay="100">

                            <div class="row">
                                <div class="col-lg-6" data-aos="fade-right" data-aos-delay="200">
                                    <div class="content">
                                        <h2>Why Partner With Us</h2>
                                        <p>We deliver exceptional results through proven expertise, cutting-edge
                                            innovation, and unwavering commitment to your success. Our comprehensive
                                            approach ensures sustainable growth and competitive advantage.</p>
                                    </div>
                                </div>
                                <div class="col-lg-6" data-aos="fade-left" data-aos-delay="300">
                                    <div class="image-wrapper">
                                        <img src="/client/assets/img/about/about-8.webp"
                                            alt="Professional team collaboration" class="img-fluid">
                                    </div>
                                </div>
                            </div>

                            <div class="features-grid" data-aos="fade-up" data-aos-delay="400">
                                <div class="row g-5">

                                    <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
                                        <div class="feature-item">
                                            <div class="icon-wrapper">
                                                <i class="bi bi-lightbulb"></i>
                                            </div>
                                            <div class="feature-content">
                                                <h3>Innovation Leadership</h3>
                                                <p>We stay ahead of industry trends, implementing cutting-edge
                                                    technologies and methodologies that drive transformational results
                                                    for your business growth.</p>
                                            </div>
                                        </div>
                                    </div><!-- End Feature Item -->

                                    <div class="col-lg-6" data-aos="fade-up" data-aos-delay="200">
                                        <div class="feature-item">
                                            <div class="icon-wrapper">
                                                <i class="bi bi-award"></i>
                                            </div>
                                            <div class="feature-content">
                                                <h3>Proven Expertise</h3>
                                                <p>Our team brings decades of combined experience across multiple
                                                    industries, ensuring strategic insights and tactical execution that
                                                    delivers measurable outcomes.</p>
                                            </div>
                                        </div>
                                    </div><!-- End Feature Item -->

                                    <div class="col-lg-6" data-aos="fade-up" data-aos-delay="300">
                                        <div class="feature-item">
                                            <div class="icon-wrapper">
                                                <i class="bi bi-headset"></i>
                                            </div>
                                            <div class="feature-content">
                                                <h3>24/7 Dedicated Support</h3>
                                                <p>Round-the-clock availability with personalized attention from
                                                    dedicated account managers who understand your unique challenges and
                                                    objectives.</p>
                                            </div>
                                        </div>
                                    </div><!-- End Feature Item -->

                                    <div class="col-lg-6" data-aos="fade-up" data-aos-delay="400">
                                        <div class="feature-item">
                                            <div class="icon-wrapper">
                                                <i class="bi bi-graph-up-arrow"></i>
                                            </div>
                                            <div class="feature-content">
                                                <h3>Cost Efficiency</h3>
                                                <p>Streamlined processes and intelligent resource allocation reduce
                                                    overhead while maximizing ROI, delivering premium results within
                                                    your budget parameters.</p>
                                            </div>
                                        </div>
                                    </div><!-- End Feature Item -->

                                </div>
                            </div>

                        </div>

                    </section><!-- /Why Us Section -->

                    <!-- Portfolio Section -->
                    <section id="portfolio" class="portfolio section">

                        <!-- Section Title -->
                        <div class="container section-title" data-aos="fade-up">
                            <span class="subtitle">Portfolio</span>
                            <h2>Check Our Portfolio</h2>
                            <p>Necessitatibus eius consequatur ex aliquid fuga eum quidem sint consectetur velit. Sed ut
                                perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                                laudantium totam rem aperiam</p>
                        </div><!-- End Section Title -->

                        <div class="container" data-aos="fade-up" data-aos-delay="100">

                            <div class="isotope-layout" data-default-filter="*" data-layout="masonry"
                                data-sort="original-order">
                                <ul class="portfolio-filters isotope-filters" data-aos="fade-up" data-aos-delay="200">
                                    <li data-filter="*" class="filter-active">All Work</li>
                                    <li data-filter=".filter-design">Digital Design</li>
                                    <li data-filter=".filter-development">Development</li>
                                    <li data-filter=".filter-strategy">Strategy</li>
                                    <li data-filter=".filter-consulting">Consulting</li>
                                </ul><!-- End Portfolio Filters -->

                                <div class="row gy-5 isotope-container" data-aos="fade-up" data-aos-delay="300">

                                    <div class="col-lg-12 portfolio-item isotope-item filter-design">
                                        <article class="portfolio-card">
                                            <div class="row g-4">
                                                <div class="col-md-6">
                                                    <div class="project-visual">
                                                        <img src="/client/assets/img/portfolio/portfolio-1.webp"
                                                            alt="Enterprise Digital Platform" class="img-fluid"
                                                            loading="lazy">
                                                        <div class="project-overlay">
                                                            <div class="overlay-content">
                                                                <a href="assets/img/portfolio/portfolio-1.webp"
                                                                    class="view-project glightbox"
                                                                    aria-label="View project image">
                                                                    <i class="bi bi-eye"></i>
                                                                </a>
                                                                <a href="#" class="project-link"
                                                                    aria-label="View project details">
                                                                    <i class="bi bi-arrow-up-right"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="project-details">
                                                        <div class="project-header">
                                                            <span class="project-category">Digital Design</span>
                                                            <time class="project-year">2024</time>
                                                        </div>
                                                        <h3 class="project-title">Enterprise Digital Platform</h3>
                                                        <p class="project-description">Sed ut perspiciatis unde omnis
                                                            iste natus error sit voluptatem accusantium doloremque
                                                            laudantium totam rem aperiam.</p>
                                                        <div class="project-meta">
                                                            <span class="client-name">Fortune 500 Company</span>
                                                            <div class="project-scope">
                                                                <span class="scope-item">UX Design</span>
                                                                <span class="scope-item">Development</span>
                                                                <span class="scope-item">Strategy</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </article>
                                    </div>

                                    <div class="col-lg-12 portfolio-item isotope-item filter-development">
                                        <article class="portfolio-card">
                                            <div class="row g-4">
                                                <div class="col-md-6 order-md-2">
                                                    <div class="project-visual">
                                                        <img src="/client/assets/img/portfolio/portfolio-3.webp"
                                                            alt="SaaS Product Suite" class="img-fluid" loading="lazy">
                                                        <div class="project-overlay">
                                                            <div class="overlay-content">
                                                                <a href="assets/img/portfolio/portfolio-3.webp"
                                                                    class="view-project glightbox"
                                                                    aria-label="View project image">
                                                                    <i class="bi bi-eye"></i>
                                                                </a>
                                                                <a href="#" class="project-link"
                                                                    aria-label="View project details">
                                                                    <i class="bi bi-arrow-up-right"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 order-md-1">
                                                    <div class="project-details">
                                                        <div class="project-header">
                                                            <span class="project-category">Development</span>
                                                            <time class="project-year">2024</time>
                                                        </div>
                                                        <h3 class="project-title">SaaS Product Suite</h3>
                                                        <p class="project-description">At vero eos et accusamus et iusto
                                                            odio dignissimos ducimus qui blanditiis praesentium
                                                            voluptatum deleniti atque corrupti.</p>
                                                        <div class="project-meta">
                                                            <span class="client-name">Tech Startup</span>
                                                            <div class="project-scope">
                                                                <span class="scope-item">Full Stack</span>
                                                                <span class="scope-item">Cloud Architecture</span>
                                                                <span class="scope-item">DevOps</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </article>
                                    </div>

                                    <div class="col-lg-12 portfolio-item isotope-item filter-strategy">
                                        <article class="portfolio-card">
                                            <div class="row g-4">
                                                <div class="col-md-6">
                                                    <div class="project-visual">
                                                        <img src="/client/assets/img/portfolio/portfolio-5.webp"
                                                            alt="Brand Transformation" class="img-fluid" loading="lazy">
                                                        <div class="project-overlay">
                                                            <div class="overlay-content">
                                                                <a href="assets/img/portfolio/portfolio-5.webp"
                                                                    class="view-project glightbox"
                                                                    aria-label="View project image">
                                                                    <i class="bi bi-eye"></i>
                                                                </a>
                                                                <a href="#" class="project-link"
                                                                    aria-label="View project details">
                                                                    <i class="bi bi-arrow-up-right"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="project-details">
                                                        <div class="project-header">
                                                            <span class="project-category">Strategy</span>
                                                            <time class="project-year">2023</time>
                                                        </div>
                                                        <h3 class="project-title">Brand Transformation</h3>
                                                        <p class="project-description">Excepteur sint occaecat cupidatat
                                                            non proident sunt in culpa qui officia deserunt mollit anim
                                                            id est laborum.</p>
                                                        <div class="project-meta">
                                                            <span class="client-name">Global Corporation</span>
                                                            <div class="project-scope">
                                                                <span class="scope-item">Brand Strategy</span>
                                                                <span class="scope-item">Visual Identity</span>
                                                                <span class="scope-item">Guidelines</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </article>
                                    </div>

                                    <div class="col-lg-12 portfolio-item isotope-item filter-consulting">
                                        <article class="portfolio-card">
                                            <div class="row g-4">
                                                <div class="col-md-6 order-md-2">
                                                    <div class="project-visual">
                                                        <img src="/client/assets/img/portfolio/portfolio-6.webp"
                                                            alt="Digital Transformation" class="img-fluid"
                                                            loading="lazy">
                                                        <div class="project-overlay">
                                                            <div class="overlay-content">
                                                                <a href="assets/img/portfolio/portfolio-6.webp"
                                                                    class="view-project glightbox"
                                                                    aria-label="View project image">
                                                                    <i class="bi bi-eye"></i>
                                                                </a>
                                                                <a href="#" class="project-link"
                                                                    aria-label="View project details">
                                                                    <i class="bi bi-arrow-up-right"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 order-md-1">
                                                    <div class="project-details">
                                                        <div class="project-header">
                                                            <span class="project-category">Consulting</span>
                                                            <time class="project-year">2024</time>
                                                        </div>
                                                        <h3 class="project-title">Digital Transformation</h3>
                                                        <p class="project-description">Lorem ipsum dolor sit amet
                                                            consectetur adipiscing elit sed do eiusmod tempor incididunt
                                                            ut labore et dolore magna aliqua.</p>
                                                        <div class="project-meta">
                                                            <span class="client-name">Healthcare Provider</span>
                                                            <div class="project-scope">
                                                                <span class="scope-item">Process Optimization</span>
                                                                <span class="scope-item">Technology Audit</span>
                                                                <span class="scope-item">Implementation</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </article>
                                    </div>

                                    <div class="col-lg-12 portfolio-item isotope-item filter-design">
                                        <article class="portfolio-card">
                                            <div class="row g-4">
                                                <div class="col-md-6">
                                                    <div class="project-visual">
                                                        <img src="/client/assets/img/portfolio/portfolio-2.webp"
                                                            alt="E-commerce Experience" class="img-fluid"
                                                            loading="lazy">
                                                        <div class="project-overlay">
                                                            <div class="overlay-content">
                                                                <a href="assets/img/portfolio/portfolio-2.webp"
                                                                    class="view-project glightbox"
                                                                    aria-label="View project image">
                                                                    <i class="bi bi-eye"></i>
                                                                </a>
                                                                <a href="#" class="project-link"
                                                                    aria-label="View project details">
                                                                    <i class="bi bi-arrow-up-right"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="project-details">
                                                        <div class="project-header">
                                                            <span class="project-category">Digital Design</span>
                                                            <time class="project-year">2024</time>
                                                        </div>
                                                        <h3 class="project-title">E-commerce Experience</h3>
                                                        <p class="project-description">Duis aute irure dolor in
                                                            reprehenderit in voluptate velit esse cillum dolore eu
                                                            fugiat nulla pariatur excepteur sint.</p>
                                                        <div class="project-meta">
                                                            <span class="client-name">Retail Brand</span>
                                                            <div class="project-scope">
                                                                <span class="scope-item">User Experience</span>
                                                                <span class="scope-item">Interface Design</span>
                                                                <span class="scope-item">Conversion Optimization</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </article>
                                    </div>

                                    <div class="col-lg-12 portfolio-item isotope-item filter-development">
                                        <article class="portfolio-card">
                                            <div class="row g-4">
                                                <div class="col-md-6 order-md-2">
                                                    <div class="project-visual">
                                                        <img src="/client/assets/img/portfolio/portfolio-4.webp"
                                                            alt="Mobile Application" class="img-fluid" loading="lazy">
                                                        <div class="project-overlay">
                                                            <div class="overlay-content">
                                                                <a href="assets/img/portfolio/portfolio-4.webp"
                                                                    class="view-project glightbox"
                                                                    aria-label="View project image">
                                                                    <i class="bi bi-eye"></i>
                                                                </a>
                                                                <a href="#" class="project-link"
                                                                    aria-label="View project details">
                                                                    <i class="bi bi-arrow-up-right"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 order-md-1">
                                                    <div class="project-details">
                                                        <div class="project-header">
                                                            <span class="project-category">Development</span>
                                                            <time class="project-year">2023</time>
                                                        </div>
                                                        <h3 class="project-title">Mobile Application</h3>
                                                        <p class="project-description">Ut enim ad minim veniam quis
                                                            nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                                            commodo consequat duis aute.</p>
                                                        <div class="project-meta">
                                                            <span class="client-name">Financial Services</span>
                                                            <div class="project-scope">
                                                                <span class="scope-item">iOS Development</span>
                                                                <span class="scope-item">Android Development</span>
                                                                <span class="scope-item">API Integration</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </article>
                                    </div>

                                </div><!-- End Portfolio Items Container -->

                            </div>

                            <div class="portfolio-conclusion" data-aos="fade-up" data-aos-delay="400">
                                <div class="conclusion-content">
                                    <h4>Ready to elevate your business?</h4>
                                    <p>Let's discuss how we can transform your digital presence and drive meaningful
                                        results for your organization.</p>
                                    <div class="conclusion-actions">
                                        <a href="#contact" class="primary-action">
                                            Start Conversation
                                            <i class="bi bi-arrow-right"></i>
                                        </a>
                                        <a href="#portfolio" class="secondary-action">
                                            View All Projects
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </section><!-- /Portfolio Section -->
                    <!-- Testimonials Section -->
                </main>

                <jsp:include page="../layout/footer.jsp" />

                <!-- Scroll Top -->
                <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i
                        class="bi bi-arrow-up-short"></i></a>

                <!-- Preloader -->
                <div id="preloader"></div>

                <!-- Vendor JS Files -->
                <script src="/client/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
                <script src="/client/assets/vendor/php-email-form/validate.js"></script>
                <script src="/client/assets/vendor/aos/aos.js"></script>
                <script src="/client/assets/vendor/glightbox/js/glightbox.min.js"></script>
                <script src="/client/assets/vendor/purecounter/purecounter_vanilla.js"></script>
                <script src="/client/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
                <script src="/client/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
                <script src="/client/assets/vendor/swiper/swiper-bundle.min.js"></script>

                <!-- Main JS File -->
                <script src="/client/assets/js/main.js"></script>

            </body>

            </html>