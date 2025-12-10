<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

                    <form method="POST" action="/login">

                        <c:if test="${param.error != null}">
                            <div class="my-2" style="color: red;">Tên đăng nhập hoặc mật khẩu không đúng.</div>
                        </c:if>

                        <div class="mb-3">
                            <label for="username" class="form-label">Email đăng nhập</label>
                            <input type="text" name="username" id="username" class="form-control" required />
                        </div>

                        <div class="mb-3">
                            <label for="password" class="form-label">Mật khẩu</label>
                            <input type="password" name="password" id="password" class="form-control" required />
                        </div>

                        <div>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        </div>

                        <button type="submit" class="btn btn-primary w-100">Đăng Nhập</button>
                    </form>
                </div>
            </div>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        </body>

        </html>