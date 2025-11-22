<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Chi Tiết Sản Phẩm - Admin</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                <style>
                    .product-image-container {
                        max-width: 400px;
                        margin: 0 auto;
                    }

                    .product-image {
                        width: 100%;
                        height: auto;
                        border-radius: 8px;
                        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                    }
                </style>
            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-12">
                            <h2 class="mb-4 text-center text-primary">Chi Tiết Sản Phẩm: **
                                <c:out value="${product.name}" />**
                            </h2>
                        </div>
                    </div>

                    <hr />

                    <c:if test="${empty product}">
                        <div class="alert alert-warning text-center">
                            Không tìm thấy thông tin sản phẩm.
                        </div>
                    </c:if>

                    <c:if test="${not empty product}">
                        <div class="row">
                            <div class="col-md-5 mb-4">
                                <div class="product-image-container">
                                    <c:choose>
                                        <c:when test="${not empty product.image}">
                                            <img src="<c:url value='${product.image}' />"
                                                alt="Hình ảnh sản phẩm: ${product.name}" class="product-image">
                                        </c:when>
                                        <c:otherwise>
                                            <div
                                                class="p-5 border text-center text-muted bg-light rounded product-image">
                                                Không có hình ảnh
                                            </div>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>

                            <div class="col-md-7">
                                <div class="card shadow-sm">
                                    <div class="card-header bg-primary text-white">
                                        Thông Tin Cơ Bản
                                    </div>
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">**ID Sản Phẩm:** <span class="float-end">
                                                <c:out value="${product.id}" />
                                            </span></li>
                                        <li class="list-group-item">**Tên Sản Phẩm:** <span
                                                class="float-end text-break">
                                                <c:out value="${product.name}" />
                                            </span></li>
                                        <li class="list-group-item">**Giá:** <span
                                                class="float-end text-danger fw-bold">
                                                <c:out value="${product.price}" /> VNĐ
                                            </span></li>
                                        <li class="list-group-item">**Số lượng còn:** <span class="float-end">
                                                <c:out value="${product.quantity}" />
                                            </span></li>
                                        <li class="list-group-item">**Đã Bán:** <span class="float-end">
                                                <c:out value="${product.sold}" />
                                            </span></li>
                                        <li class="list-group-item">**Nhà Sản Xuất/Thương Hiệu:** <span
                                                class="float-end">
                                                <c:out value="${product.factory}" />
                                            </span></li>
                                        <li class="list-group-item">**Đối Tượng Mục Tiêu:** <span class="float-end">
                                                <c:out value="${product.target}" />
                                            </span></li>
                                    </ul>
                                </div>

                                <div class="mt-4">
                                    <div class="card shadow-sm">
                                        <div class="card-header bg-info text-white">
                                            Mô Tả Ngắn
                                        </div>
                                        <div class="card-body">
                                            <p class="card-text">
                                                <c:out value="${product.shortDesc}" />
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row mt-4 mb-5">
                            <div class="col-12">
                                <div class="card shadow">
                                    <div class="card-header bg-success text-white">
                                        Mô Tả Chi Tiết
                                    </div>
                                    <div class="card-body">
                                        <p class="card-text text-break" style="white-space: pre-wrap;">
                                            <c:out value="${product.detailDesc}" />
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row mb-5">
                            <div class="col-12 text-center">
                                <a href="<c:url value='/admin/product' />" class="btn btn-secondary me-2">
                                    < Quay Lại Danh Sách </a>

                                        <a href="<c:url value='/admin/product/edit/${product.id}' />"
                                            class="btn btn-warning">
                                            Chỉnh Sửa Sản Phẩm
                                        </a>
                            </div>
                        </div>
                    </c:if>
                </div>
            </body>

            </html>