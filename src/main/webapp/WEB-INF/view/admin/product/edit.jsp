<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">

                <title>Update Product - Admin</title>

                <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
                <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
                <link href="/assets/css/style.css" rel="stylesheet">
            </head>

            <body>

                <jsp:include page="../layout/header.jsp" />
                <jsp:include page="../layout/sidebar.jsp" />

                <main id="main" class="main">

                    <div class="pagetitle">
                        <h1>Update Product</h1>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="/dashboard">Dashboard</a></li>
                            <li class="breadcrumb-item"><a href="/products">Products</a></li>
                            <li class="breadcrumb-item active">Update</li>
                        </ol>
                    </div>

                    <section class="section">
                        <div class="col-lg-10 mx-auto">
                            <div class="card">
                                <div class="card-body">

                                    <h5 class="card-title">Product Details</h5>

                                    <form:form method="POST" action="/admin/product/update" modelAttribute="product"
                                        class="row g-3">

                                        <form:hidden path="id" />

                                        <div class="col-12">
                                            <label class="form-label">Tên Sản Phẩm <span
                                                    class="text-danger">*</span></label>
                                            <form:input path="name" class="form-control"
                                                placeholder="Nhập tên sản phẩm..." />
                                            <form:errors path="name" cssClass="text-danger small" />
                                        </div>

                                        <div class="col-md-4">
                                            <label class="form-label">Giá (VNĐ) <span
                                                    class="text-danger">*</span></label>
                                            <form:input path="price" type="number" class="form-control" step="1000"
                                                min="0" />
                                            <form:errors path="price" cssClass="text-danger small" />
                                        </div>

                                        <div class="col-md-4">
                                            <label class="form-label">Số Lượng <span
                                                    class="text-danger">*</span></label>
                                            <form:input path="quantity" type="number" class="form-control" min="0" />
                                            <form:errors path="quantity" cssClass="text-danger small" />
                                        </div>

                                        <div class="col-md-4">
                                            <label class="form-label">Nhà Sản Xuất</label>
                                            <form:input path="factory" class="form-control"
                                                placeholder="Công ty/Thương hiệu..." />
                                            <form:errors path="factory" cssClass="text-danger small" />
                                        </div>

                                        <div class="col-12">
                                            <label class="form-label">Mục Đích Sử Dụng</label>
                                            <form:input path="target" class="form-control"
                                                placeholder="Ví dụ: Dùng cho da dầu, người lớn..." />
                                            <form:errors path="target" cssClass="text-danger small" />
                                        </div>

                                        <div class="col-12">
                                            <label class="form-label">Mô Tả Ngắn</label>
                                            <form:textarea path="shortDesc" rows="2" class="form-control"
                                                placeholder="Tóm tắt nội dung ngắn gọn..." />
                                            <form:errors path="shortDesc" cssClass="text-danger small" />
                                        </div>

                                        <div class="col-12">
                                            <label class="form-label">Mô Tả Chi Tiết</label>
                                            <form:textarea path="detailDesc" rows="5" class="form-control"
                                                placeholder="Thông tin chi tiết sản phẩm..." />
                                            <form:errors path="detailDesc" cssClass="text-danger small" />
                                        </div>

                                        <div class="col-12">
                                            <label class="form-label">Ảnh Sản Phẩm (URL/Path)</label>
                                            <form:input path="image" class="form-control"
                                                placeholder="Nhập URL hoặc đường dẫn ảnh..." />
                                            <form:errors path="image" cssClass="text-danger small" />
                                        </div>

                                        <div class="text-center pt-3">
                                            <button type="submit" class="btn btn-primary me-2">
                                                <i class="bi bi-arrow-repeat"></i> Cập Nhật Sản Phẩm
                                            </button>
                                            <a href="/products" class="btn btn-secondary">
                                                <i class="bi bi-x-circle"></i> Hủy Bỏ
                                            </a>
                                        </div>

                                    </form:form>

                                </div>
                            </div>
                        </div>
                    </section>

                </main>

                <jsp:include page="../layout/footer.jsp" />

                <script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
                <script src="/assets/js/main.js"></script>

            </body>

            </html>