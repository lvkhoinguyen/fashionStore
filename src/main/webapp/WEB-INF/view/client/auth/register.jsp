<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="vi">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Đăng ký tài khoản</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <style>
                    .form-container {
                        background-color: #ffffff;
                        padding: 30px;
                        border-radius: 10px;
                        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
                    }

                    .text-primary {
                        color: #007bff !important;
                    }
                </style>
            </head>

            <body>
                <div class="container mt-5">
                    <div class="row justify-content-center">
                        <div class="col-md-6 col-lg-5">

                            <c:if test="${not empty message}">
                                <div class="alert alert-success alert-dismissible fade show">
                                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                                    <strong>Thành công!</strong> ${message}
                                </div>
                            </c:if>

                            <c:if test="${not empty error}">
                                <div class="alert alert-danger alert-dismissible fade show">
                                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                                    <strong>Lỗi!</strong> ${error}
                                </div>
                            </c:if>

                            <div class="form-container">
                                <h3 class="text-center mb-4 text-primary">Đăng Ký Tài Khoản</h3>

                                <form:form action="/register" method="POST" modelAttribute="registerUser">

                                    <div class="mb-3">
                                        <label for="fullName" class="form-label">Họ và tên:</label>
                                        <form:input path="fullName" cssClass="form-control"
                                            placeholder="Nhập họ tên đầy đủ" required="true" />
                                        <form:errors path="fullName" cssClass="text-danger small" />
                                    </div>

                                    <div class="mb-3">
                                        <label for="email" class="form-label">Email:</label>
                                        <form:input path="email" type="email" cssClass="form-control"
                                            placeholder="name@example.com" required="true" />
                                        <form:errors path="email" cssClass="text-danger small" />
                                    </div>

                                    <div class="mb-3">
                                        <label for="password" class="form-label">Mật khẩu:</label>
                                        <form:password path="password" cssClass="form-control"
                                            placeholder="Nhập mật khẩu" required="true" />
                                        <form:errors path="password" cssClass="text-danger small" />
                                    </div>

                                    <div class="mb-3">
                                        <label for="confirmPassword" class="form-label">Xác nhận mật khẩu:</label>
                                        <form:password path="confirmPassword" cssClass="form-control"
                                            placeholder="Nhập lại mật khẩu" required="true" />
                                        <form:errors path="confirmPassword" cssClass="text-danger small" />
                                    </div>

                                    <div class="d-grid gap-2 mt-4">
                                        <button type="submit" class="btn btn-primary btn-lg">Đăng Ký Ngay</button>
                                    </div>

                                    <div class="text-center mt-3">
                                        <p>Đã có tài khoản? <a href="login">Đăng nhập</a></p>
                                    </div>

                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            </body>

            </html>