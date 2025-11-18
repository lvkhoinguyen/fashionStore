<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta content="width=device-width, initial-scale=1.0" name="viewport">

                <title>Create Product - Admin</title>
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
            </head>

            <body>

                <jsp:include page="../layout/header.jsp" />

                <jsp:include page="../layout/sidebar.jsp" />

                <main id="main" class="main">

                    <div class="pagetitle">
                        <h1>Create New Product</h1>
                        <nav>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="/dashboard">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="/products">Products</a></li>
                                <li class="breadcrumb-item active">Create</li>
                            </ol>
                        </nav>
                    </div><!-- End Page Title -->

                    <section class="section">
                        <div class="row">
                            <div class="col-lg-10 offset-lg-1">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="card-title">Product Details</h5>

                                        <!-- Spring Form: Đảm bảo Controller truyền ModelAttribute "product" -->
                                        <form:form method="POST" action="/admin/product/create" modelAttribute="product"
                                            class="row g-3">

                                            <form:hidden path="id" />

                                            <!-- 1. Tên Sản Phẩm (name) -->
                                            <div class="col-md-12">
                                                <label for="productName" class="form-label">Tên Sản Phẩm (<span
                                                        class="text-danger">*</span>)</label>
                                                <form:input path="name" type="text" id="productName"
                                                    class="form-control" placeholder="Nhập tên sản phẩm..." />
                                                <form:errors path="name" cssClass="text-danger small mt-1" />
                                            </div>

                                            <!-- 2. Giá (price) -->
                                            <div class="col-md-4">
                                                <label for="productPrice" class="form-label">Giá (VNĐ) (<span
                                                        class="text-danger">*</span>)</label>
                                                <form:input path="price" type="number" id="productPrice"
                                                    class="form-control" step="1000" min="0" placeholder="0" />
                                                <form:errors path="price" cssClass="text-danger small mt-1" />
                                            </div>

                                            <!-- *NEW* 3. Số Lượng (quantity) -->
                                            <div class="col-md-4">
                                                <label for="productQuantity" class="form-label">Số Lượng (<span
                                                        class="text-danger">*</span>)</label>
                                                <form:input path="quantity" type="number" id="productQuantity"
                                                    class="form-control" min="0" placeholder="1" />
                                                <form:errors path="quantity" cssClass="text-danger small mt-1" />
                                            </div>

                                            <!-- 4. Nhà Sản Xuất (factory) -->
                                            <div class="col-md-4">
                                                <label for="productFactory" class="form-label">Nhà Sản Xuất</label>
                                                <form:input path="factory" type="text" id="productFactory"
                                                    class="form-control" placeholder="Công ty/Thương hiệu..." />
                                                <form:errors path="factory" cssClass="text-danger small mt-1" />
                                            </div>

                                            <!-- *NEW* 5. Mục Đích Sử Dụng (target) -->
                                            <div class="col-md-12">
                                                <label for="productTarget" class="form-label">Mục Đích Sử Dụng
                                                    (target)</label>
                                                <form:input path="target" type="text" id="productTarget"
                                                    class="form-control"
                                                    placeholder="Ví dụ: Dùng cho da dầu, Dùng cho người lớn..." />
                                                <form:errors path="target" cssClass="text-danger small mt-1" />
                                            </div>

                                            <!-- *NEW* 6. Mô Tả Ngắn (shortDesc) -->
                                            <div class="col-12">
                                                <label for="productShortDesc" class="form-label">Mô Tả Ngắn
                                                    (shortDesc)</label>
                                                <form:textarea path="shortDesc" id="productShortDesc"
                                                    class="form-control" rows="2"
                                                    placeholder="Tóm tắt ngắn gọn về sản phẩm (Hiện trên trang danh sách)..." />
                                                <form:errors path="shortDesc" cssClass="text-danger small mt-1" />
                                            </div>

                                            <!-- *NEW* 7. Mô Tả Chi Tiết (detailDesc) -->
                                            <div class="col-12">
                                                <label for="productDetailDesc" class="form-label">Mô Tả Chi Tiết
                                                    (detailDesc)</label>
                                                <form:textarea path="detailDesc" id="productDetailDesc"
                                                    class="form-control" rows="5"
                                                    placeholder="Thông tin chi tiết, thành phần, cách sử dụng..." />
                                                <form:errors path="detailDesc" cssClass="text-danger small mt-1" />
                                            </div>

                                            <!-- *NEW* 8. Ảnh Sản Phẩm (image) -->
                                            <div class="col-md-12">
                                                <label for="productImage" class="form-label">Ảnh Sản Phẩm
                                                    (URL/Path)</label>
                                                <form:input path="image" type="text" id="productImage"
                                                    class="form-control" placeholder="Nhập URL hoặc đường dẫn ảnh..." />
                                                <form:errors path="image" cssClass="text-danger small mt-1" />
                                            </div>


                                            <!-- Action Buttons -->
                                            <div class="text-center pt-3">
                                                <button type="submit" class="btn btn-success me-2">
                                                    <i class="bi bi-save me-1"></i> Lưu Sản Phẩm
                                                </button>
                                                <a href="/products" class="btn btn-secondary">
                                                    <i class="bi bi-x-circle me-1"></i> Hủy Bỏ
                                                </a>
                                            </div>
                                        </form:form><!-- End Spring Form -->

                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                </main><!-- End #main -->

                <jsp:include page="../layout/footer.jsp" />

                <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
                        class="bi bi-arrow-up-short"></i></a>

                <!-- Vendor JS Files (NiceAdmin assets) -->
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