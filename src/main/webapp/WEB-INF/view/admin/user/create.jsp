<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta content="width=device-width, initial-scale=1.0" name="viewport">

                <title>Create User | Dashboard</title>
                <meta content="User creation page for administration panel" name="description">
                <meta content="admin, user management" name="keywords">

                <!-- Favicons -->
                <link href="/assets/img/favicon.png" rel="icon">
                <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

                <!-- Google Fonts -->
                <link href="https://fonts.gstatic.com" rel="preconnect">
                <link
                    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
                    rel="stylesheet">

                <!-- Vendor CSS Files -->
                <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
                <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
                <link href="/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
                <link href="/assets/vendor/quill/quill.snow.css" rel="stylesheet">
                <link href="/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
                <link href="/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
                <link href="/assets/vendor/simple-datatables/style.css" rel="stylesheet">

                <!-- Template Main CSS File -->
                <link href="/assets/css/style.css" rel="stylesheet">
            </head>

            <body>

                <jsp:include page="../layout/header.jsp" />

                <jsp:include page="../layout/sidebar.jsp" />

                <main id="main" class="main">

                    <!-- Page Title and Breadcrumb -->
                    <div class="pagetitle">
                        <h1>Create User</h1>
                        <nav>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="<c:url value=" /dashboard" />">Home</a></li>
                                <li class="breadcrumb-item">Admin</li>
                                <li class="breadcrumb-item active">Create User</li>
                            </ol>
                        </nav>
                    </div><!-- End Page Title -->

                    <section class="section">
                        <div class="row">
                            <!-- Centered Form Container, slightly wider on desktop (lg-8) and smaller on tablet (md-10) -->
                            <div class="col-lg-6 col-md-8 mx-auto">

                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="card-title">User Details</h5>

                                        <!-- Spring MVC Form (using row g-3 for consistent spacing) -->
                                        <form:form action="/admin/user/create" method="post" modelAttribute="newUser"
                                            class="row g-3">

                                            <div class="col-12">
                                                <label for="fullName" class="form-label">Full Name</label>
                                                <form:input type="text" id="fullName" class="form-control"
                                                    path="fullName" />
                                                <%-- Error message placeholder: <form:errors path="fullName"
                                                    class="text-danger" /> --%>
                                            </div>

                                            <div class="col-12">
                                                <label for="email" class="form-label">Email</label>
                                                <form:input type="email" id="email" class="form-control" path="email" />
                                                <%-- Error message placeholder: <form:errors path="email"
                                                    class="text-danger" /> --%>
                                            </div>

                                            <div class="col-12">
                                                <label for="password" class="form-label">Password</label>
                                                <form:input type="password" id="password" class="form-control"
                                                    path="password" />
                                                <%-- Error message placeholder: <form:errors path="password"
                                                    class="text-danger" /> --%>
                                            </div>

                                            <div class="col-12">
                                                <label for="address" class="form-label">Address</label>
                                                <form:input type="text" id="address" class="form-control"
                                                    path="address" />
                                                <%-- Error message placeholder: <form:errors path="address"
                                                    class="text-danger" /> --%>
                                            </div>

                                            <div class="col-12">
                                                <label for="phone" class="form-label">Phone</label>
                                                <form:input type="text" id="phone" class="form-control" path="phone" />
                                                <%-- Error message placeholder: <form:errors path="phone"
                                                    class="text-danger" /> --%>
                                            </div>

                                            <div class="col-12 d-grid gap-2 mt-4">
                                                <button type="submit" class="btn btn-primary">
                                                    <i class="bi bi-person-plus-fill me-2"></i> Create User
                                                </button>
                                            </div>

                                            <div class="mb-3 col-12 col-md-6">
                                                <label class="form-label">Role :</label>
                                                <form:select class="form-select" path="role.name">
                                                    <form:option value="ADMIN">ADMIN</form:option>
                                                    <form:option value="USER">USER</form:option>
                                                </form:select>
                                            </div>
x   

                                            <div class="col-12 col-md-6">
                                                <label class="form-label d-block">Preview</label>
                                                <img id="avatarPreview"
                                                    style="max-height: 250px; display: none; border-radius: 6px;"
                                                    alt="avatar preview">
                                            </div>


                                        </form:form>
                                        <!-- End Spring Form -->
                                    </div>
                                </div>

                            </div>
                        </div>
                    </section>

                </main><!-- End #main -->

                <jsp:include page="../layout/footer.jsp" />

                <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
                        class="bi bi-arrow-up-short"></i></a>

                <!-- Vendor JS Files -->
                <script src="/assets/vendor/apexcharts/apexcharts.min.js"></script>
                <script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
                <script src="/assets/vendor/chart.js/chart.umd.js"></script>
                <script src="/assets/vendor/echarts/echarts.min.js"></script>
                <script src="/assets/vendor/quill/quill.js"></script>
                <script src="/assets/vendor/simple-datatables/simple-datatables.js"></script>
                <script src="/assets/vendor/tinymce/tinymce.min.js"></script>
                <script src="/assets/vendor/php-email-form/validate.js"></script>

                <!-- Template Main JS File -->
                <script src="/assets/js/main.js"></script>

            </body>

            </html>