<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Login</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <style>
                    /* Tùy chỉnh để căn giữa form đăng nhập */
                    .login-container {
                        height: 100vh;
                        display: flex;
                        justify-content: center;
                        align-items: center;
                    }

                    .login-form {
                        width: 100%;
                        max-width: 400px;
                        /* Độ rộng tối đa của form */
                        padding: 15px;
                        margin: auto;
                        border: 1px solid #ccc;
                        border-radius: 8px;
                        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                    }
                </style>
            </head>

            <body>
                <div class="login-container">
                    <div class="login-form bg-light">
                        <h2 class="text-center mb-4">Đăng Nhập</h2>

                        <c:if test="${not empty error}">
                            <div class="alert alert-danger" role="alert">
                                ${error}
                            </div>
                        </c:if>

                        <form:form method="POST" action="/login" modelAttribute="user">
                            <c:if test="${param.error != null}">
                                <div class="my-2" style="color: red;">Invalid email or password.</div>
                            </c:if>
                            <div class="mb-3">
                                <label for="email" class="form-label">email đăng nhập</label>
                                <form:input type="text" path="email" id="email" class="form-control" required="true" />
                            </div>

                            <div class="mb-3">
                                <label for="password" class="form-label">Mật khẩu</label>
                                <form:password path="password" id="password" class="form-control" required="true" />
                            </div>

                            <div>
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                            </div>

                            <button type="submit" class="btn btn-primary w-100">Đăng Nhập</button>
                        </form:form>
                    </div>
                </div>

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </body>

            </html>