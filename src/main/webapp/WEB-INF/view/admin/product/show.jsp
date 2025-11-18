<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <meta content="width=device-width, initial-scale=1.0" name="viewport">

                    <title>Manage Products - Admin Dashboard</title>
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

                    <!-- Vendor CSS Files (NiceAdmin assets) -->
                    <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
                    <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
                    <link href="/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
                    <link href="/assets/vendor/quill/quill.snow.css" rel="stylesheet">
                    <link href="/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
                    <link href="/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
                    <link href="/assets/vendor/simple-datatables/style.css" rel="stylesheet">

                    <!-- *THÊM* Font Awesome (đã có trong code của bạn) -->
                    <link rel="stylesheet"
                        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

                    <!-- Template Main CSS File -->
                    <link href="/assets/css/style.css" rel="stylesheet">

                </head>

                <body>

                    <jsp:include page="../layout/header.jsp" />

                    <jsp:include page="../layout/sidebar.jsp" />

                    <main id="main" class="main">

                        <!-- Nội dung chính -->
                        <div class="pagetitle">
                            <h1 class="page-title">Manage Products</h1>
                            <nav>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="/dashboard"
                                            class="text-decoration-none">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Products</li>
                                </ol>
                            </nav>
                        </div><!-- End Page Title -->

                        <section class="section">
                            <div class="row">
                                <div class="col-lg-12">

                                    <div class="card">
                                        <div class="card-body">
                                            <!-- Tiêu đề bảng và nút Create -->
                                            <div class="d-flex justify-content-between align-items-center mb-3 pt-3">
                                                <h5 class="card-title">Table products</h5>

                                                <!-- SỬA ĐƯỜNG DẪN TẠO MỚI (Dùng đường dẫn tuyệt đối) -->
                                                <a href="/admin/product/create"
                                                    class="btn btn-primary btn-sm rounded-pill">
                                                    <i class="fas fa-plus me-1"></i> Create a product
                                                </a>
                                            </div>

                                            <!-- Bảng Sản Phẩm -->
                                            <div class="table-responsive">
                                                <table class="table table-hover align-middle">
                                                    <thead class="table-light">
                                                        <tr>
                                                            <th scope="col" style="width: 5%;">ID</th>
                                                            <th scope="col" style="width: 35%;">Name</th>
                                                            <th scope="col" style="width: 15%;">Price</th>
                                                            <th scope="col" style="width: 10%;">Quantity</th>
                                                            <th scope="col" style="width: 35%;">Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <!-- Vòng lặp hiển thị danh sách sản phẩm -->
                                                        <c:forEach var="product" items="${products}">
                                                            <tr>
                                                                <th scope="row">
                                                                    <c:out value="${product.id}" />
                                                                </th>
                                                                <td>
                                                                    <a href="/admin/product/detail/${product.id}">
                                                                        <c:out value="${product.name}" />
                                                                    </a>
                                                                </td>
                                                                <td>
                                                                    <!-- Định dạng số có dấu phân cách -->
                                                                    <fmt:formatNumber value="${product.price}"
                                                                        type="number" groupingUsed="true" /> VNĐ
                                                                </td>
                                                                <td>
                                                                    <c:out value="${product.quantity}" />
                                                                </td>
                                                                <td class="action-btns">
                                                                    <!-- Nút Detail (Xem chi tiết) -->
                                                                    <a href="/admin/product/detail/${product.id}"
                                                                        class="btn btn-info btn-sm me-2"
                                                                        title="Xem chi tiết">
                                                                        <i class="bi bi-eye"></i>
                                                                    </a>
                                                                    <!-- Nút Edit (Chỉnh sửa) -->
                                                                    <!-- SỬA ĐƯỜNG DẪN EDIT -->
                                                                    <a href="/admin/product/edit/${product.id}"
                                                                        class="btn btn-warning btn-sm me-2"
                                                                        title="Chỉnh sửa">
                                                                        <i class="fas fa-edit"></i>
                                                                    </a>
                                                                    <!-- Nút Delete (Xóa) -->
                                                                    <button
                                                                        onclick="confirmDelete('${product.id}', '${product.name}')"
                                                                        class="btn btn-danger btn-sm"
                                                                        title="Xóa sản phẩm">
                                                                        <i class="fas fa-trash-alt"></i>
                                                                    </button>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>

                                                        <!-- Hiển thị khi danh sách rỗng -->
                                                        <c:if test="${empty products}">
                                                            <tr>
                                                                <td colspan="5" class="text-center text-muted py-4">
                                                                    Không có sản phẩm nào được tìm thấy. Vui lòng tạo
                                                                    sản phẩm mới.
                                                                </td>
                                                            </tr>
                                                        </c:if>
                                                    </tbody>
                                                </table>
                                            </div>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </section>

                        <!-- Scripts -->
                        <script>
                            // HÀM XỬ LÝ XÓA
                            function confirmDelete(productId, productName) {
                                // Sử dụng Modal tùy chỉnh thay vì alert/confirm (trong môi trường Production)
                                if (confirm(`Bạn có chắc chắn muốn xóa sản phẩm "${productName}" (ID: ${productId}) không?`)) {
                                    // SỬA ĐƯỜNG DẪN DELETE
                                    console.log('Xóa sản phẩm ID:', productId);
                                    window.location.href = '/admin/product/delete/' + productId;
                                }
                            }
                        </script>
                        <!-- Nội dung Body kết thúc tại đây -->

                    </main><!-- End #main -->


                    <jsp:include page="../../layout/footer.jsp" />

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