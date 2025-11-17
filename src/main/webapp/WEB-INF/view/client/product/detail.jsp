<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Chi Tiết Sản Phẩm:
                    <c:out value="${product.name}" />
                </title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
            </head>

            <body>
                <div class="container my-5">
                    <h1 class="mb-4">Chi Tiết Sản Phẩm</h1>

                    <c:if test="${product != null}">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="card shadow-sm">
                                    <img src="${product.image}" class="card-img-top" alt="${product.name}"
                                        style="height: 400px; object-fit: contain; padding: 15px;">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <h2 class="display-5 mb-3">${product.name}</h2>

                                <p class="lead text-danger">
                                    Giá: **
                                    <c:out value="${product.price}" />** VNĐ
                                </p>

                                <hr>

                                <h3 class="h4 mt-4">Mô Tả Sản Phẩm</h3>
                                <p class="text-muted">${product.detailDesc}</p>

                                <c:if test="${product.shortDesc != null}">
                                    <p><strong>Thông tin thêm:</strong> ${product.shortDesc}</p>
                                </c:if>

                                <p><strong>Nhà sản xuất:</strong> ${product.factory}</p>
                                <p><strong>Đối tượng:</strong> ${product.target}</p>
                                <p><strong>Số lượng còn:</strong>
                                    <c:out value="${product.quantity}" />
                                </p>


                                <p><strong>Trạng thái:</strong>
                                    <c:choose>
                                        <c:when test="${product.quantity > 0}">
                                            <span class="badge bg-success">Còn hàng</span>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="badge bg-danger">Hết hàng</span>
                                        </c:otherwise>
                                    </c:choose>
                                </p>

                                <div class="mt-4">
                                    <button class="btn btn-primary btn-lg" onclick="addToCart('${product.id}')" <c:if
                                        test="${product.quantity == 0}">disabled
                    </c:if>
                    >
                    <i class="fas fa-cart-plus"></i> Thêm vào giỏ hàng
                    </button>
                    <a href="/" class="btn btn-outline-secondary btn-lg">Quay lại trang chủ</a>
                </div>
                </div>
                </div>
                </c:if>

                <c:if test="${product == null}">
                    <div class="alert alert-warning" role="alert">
                        Xin lỗi, sản phẩm này không tồn tại hoặc đã bị xóa.
                    </div>
                </c:if>

                </div>

                <script>
                    function addToCart(productId) {
                        alert('Đã thêm sản phẩm ID: ' + productId + ' vào giỏ hàng!');
                        // Ở đây bạn sẽ dùng AJAX để gửi yêu cầu đến Controller
                        // để xử lý logic thêm vào giỏ hàng thực tế.
                    }
                </script>
            </body>

            </html>