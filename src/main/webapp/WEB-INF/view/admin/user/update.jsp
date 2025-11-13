<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta content="width=device-width, initial-scale=1.0" name="viewport">

                <title>Dashboard - NiceAdmin Bootstrap Template</title>
                <meta content="" name="description">
                <meta content="" name="keywords">

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

                <!-- =======================================================
  * Template Name: NiceAdmin
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Apr 20 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
            </head>

            <body>

                <jsp:include page="../layout/header.jsp" />

                <jsp:include page="../layout/sidebar.jsp" />

                <main id="main" class="main mb-5">

                    <div class="container mt-5">
                        <div class="row">
                            <div class="col-md-6 col-12 mx-auto form-container">
                                <h3>Update User</h3>
                                <hr />

                                <!-- Form cập nhật -->
                                <form:form action="/admin/user/update" method="post" modelAttribute="user">

                                    <!-- hidden id -->
                                    <form:hidden path="id" />

                                    <div class="mb-3">
                                        <label class="form-label">Full Name:</label>
                                        <form:input path="fullName" type="text" class="form-control" />
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Email:</label>
                                        <form:input path="email" type="email" class="form-control" readonly="true" />
                                        <small class="text-muted">Email cannot be changed</small>
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Password:</label>
                                        <form:password path="password" class="form-control" readonly="true" />
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Address:</label>
                                        <form:input path="address" type="text" class="form-control" />
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Phone:</label>
                                        <form:input path="phone" type="text" class="form-control" />
                                    </div>

                                    <button type="submit" class="btn btn-primary mt-3">Update User</button>
                                    <a href="/admin/user/table-user" class="btn btn-secondary mt-3">Cancel</a>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </main>



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