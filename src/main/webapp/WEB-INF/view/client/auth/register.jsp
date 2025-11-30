<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Đăng ký tài khoản</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                <style>
                    .form-container {
                        background-color: #f8f9fa;
                        padding: 30px;
                        border-radius: 10px;
                        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
                    }
                </style>
            </head>

            <body>
                <div class="container mt-5">
                    <div class="row justify-content-center">
                        <div class="col-md-6">

                            <c:if test="${not empty message}">
                                <div class="alert alert-success alert-dismissible fade show">
                                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                                    ${message}
                                </div>
                            </c:if>
                            <c:if test="${not empty error}">
                                <div class="alert alert-danger alert-dismissible fade show">
                                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                                    ${error}
                                </div>
                            </c:if>

                            <div class="form-container">
                                <h3 class="text-center mb-4 text-primary">Đăng Ký Thành Viên</h3>

                                <form:form action="register-process" method="POST" modelAttribute="user">

                                    <div class="mb-3">
                                        <label for="fullName" class="form-label">Họ và tên:</label>
                                        <form:input path="fullName" cssClass="form-control"
                                            placeholder="Nhập họ tên đầy đủ" />
                                        <form:errors path="fullName" cssClass="text-danger small" />
                                    </div>

                                    <div class="mb-3">
                                        <label for="email" class="form-label">Email:</label>
                                        <form:input path="email" type="email" cssClass="form-control"
                                            placeholder="name@example.com" />
                                        <form:errors path="email" cssClass="text-danger small" />
                                    </div>

                                    <div class="mb-3">
                                        <label for="phone" class="form-label">Số điện thoại:</label>
                                        <form:input path="phone" cssClass="form-control"
                                            placeholder="Nhập số điện thoại" />
                                        <form:errors path="phone" cssClass="text-danger small" />
                                    </div>

                                    <div class="mb-3">
                                        <label for="password" class="form-label">Mật khẩu:</label>
                                        <form:password path="password" cssClass="form-control"
                                            placeholder="Nhập mật khẩu" />
                                        <form:errors path="password" cssClass="text-danger small" />
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
            </body>

            </html>