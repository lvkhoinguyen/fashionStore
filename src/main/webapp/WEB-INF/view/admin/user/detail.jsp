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

                    <div class="container my-5">
                        <div class="row g-4">

                            <div class="col-lg-4">
                                <div class="card shadow-sm border-0 rounded-4 h-100">
                                    <div class="card-body text-center d-flex flex-column align-items-center">

                                        <img src="https://via.placeholder.com/150" alt="Ảnh đại diện"
                                            class="rounded-circle profile-avatar mb-3">

                                        <h4 class="card-title mb-1">${user.fullName}</h4>
                                        <p class="text-muted mb-3">${user.email}</p>

                                        <hr class="w-100">

                                        <ul class="list-group list-group-flush text-start w-100 mt-2">
                                            <li class="list-group-item border-0 px-0">
                                                <i class="bi bi-telephone-fill text-primary me-2"></i>
                                                ${not empty user.phone ? user.phone : "Chưa cập nhật SĐT"}
                                            </li>
                                            <li class="list-group-item border-0 px-0">
                                                <i class="bi bi-geo-alt-fill text-primary me-2"></i>
                                                ${not empty user.address ? user.address : "Chưa cập nhật địa chỉ"}
                                            </li>
                                            <li class="list-group-item border-0 px-0">
                                                <i class="bi bi-person-badge-fill text-primary me-2"></i>
                                                ID: <span class="fw-bold">${user.id}</span>
                                            </li>
                                        </ul>

                                        <div class="mt-auto pt-3">
                                            <a href="<c:url value='/admin/user'/>"
                                                class="btn btn-outline-secondary px-4">
                                                <i class="bi bi-arrow-left-circle me-1"></i> Quay lại danh sách
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-8">
                                <div class="card shadow-sm border-0 rounded-4">
                                    <div class="card-header bg-primary bg-gradient text-white py-3">
                                        <h4 class="mb-0"><i class="bi bi-pencil-square me-2"></i> Chỉnh sửa thông tin
                                        </h4>
                                    </div>

                                    <div class="card-body p-4">

                                        <form:form method="post" modelAttribute="user"
                                            action="${pageContext.request.contextPath}/admin/user/view/${user.id}"
                                            cssClass="row g-3">

                                            <c:if test="${not empty _csrf}">
                                                <input type="hidden" name="${_csrf.parameterName}"
                                                    value="${_csrf.token}" />
                                            </c:if>

                                            <div class="col-md-6">
                                                <label class="form-label fw-bold">ID Người dùng</label>
                                                <div class="input-group">
                                                    <span class="input-group-text bg-light"><i
                                                            class="bi bi-hash"></i></span>
                                                    <form:input path="id" cssClass="form-control" readonly="readonly" />
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <label class="form-label fw-bold">Họ và tên</label>
                                                <div class="input-group">
                                                    <span class="input-group-text"><i
                                                            class="bi bi-person-fill"></i></span>
                                                    <form:input path="fullName" cssClass="form-control"
                                                        placeholder="Nhập họ và tên" />
                                                </div>
                                                <form:errors path="fullName" cssClass="text-danger small mt-1" />
                                            </div>

                                            <div class="col-12">
                                                <label class="form-label fw-bold">Email</label>
                                                <div class="input-group">
                                                    <span class="input-group-text"><i
                                                            class="bi bi-envelope-fill"></i></span>
                                                    <form:input path="email" cssClass="form-control"
                                                        placeholder="Nhập email" />
                                                </div>
                                                <form:errors path="email" cssClass="text-danger small mt-1" />
                                            </div>

                                            <div class="col-md-6">
                                                <label class="form-label fw-bold">Địa chỉ</label>
                                                <div class="input-group">
                                                    <span class="input-group-text"><i
                                                            class="bi bi-geo-alt-fill"></i></span>
                                                    <form:input path="address" cssClass="form-control"
                                                        placeholder="Nhập địa chỉ" />
                                                </div>
                                                <form:errors path="address" cssClass="text-danger small mt-1" />
                                            </div>

                                            <div class="col-md-6">
                                                <label class="form-label fw-bold">Số điện thoại</label>
                                                <div class="input-group">
                                                    <span class="input-group-text"><i
                                                            class="bi bi-telephone-fill"></i></span>
                                                    <form:input path="phone" cssClass="form-control"
                                                        placeholder="Nhập số điện thoại" />
                                                </div>
                                                <form:errors path="phone" cssClass="text-danger small mt-1" />
                                            </div>

                                            <div class="col-12">
                                                <label class="form-label fw-bold">Mật khẩu mới</label>
                                                <div class="input-group">
                                                    <span class="input-group-text"><i
                                                            class="bi bi-lock-fill"></i></span>
                                                    <form:password path="password" cssClass="form-control"
                                                        placeholder="Bỏ trống nếu không muốn thay đổi mật khẩu" />
                                                </div>
                                                <form:errors path="password" cssClass="text-danger small mt-1" />
                                            </div>

                                            <div class="col-12 text-end mt-4">
                                                <button type="submit" class="btn btn-success btn-lg px-4">
                                                    <i class="bi bi-check-circle-fill me-1"></i> Lưu thay đổi
                                                </button>
                                            </div>

                                        </form:form>
                                    </div>
                                    <div class="card-footer text-center text-muted py-3">
                                        <small>© 2025 - Fashion Store</small>
                                    </div>
                                </div>
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