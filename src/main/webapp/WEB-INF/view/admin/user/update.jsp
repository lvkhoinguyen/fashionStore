<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <title>Update User</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            </head>

            <body>

                <div class="container mt-5">
                    <div class="row">
                        <div class="col-md-6 col-12 mx-auto form-container">
                            <h3>Update User</h3>
                            <hr />

                            <!-- Form cập nhật -->
                            <form:form action="/admin/user/update" method="post" modelAttribute="user">

                                <!-- hidden id -->
                                <form:hidden path="id" />

                                <div class="mb-3">
                                    <label class="form-label">Full Name:</label>
                                    <form:input path="fullName" type="text" class="form-control" />
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Email:</label>
                                    <form:input path="email" type="email" class="form-control" readonly="true" />
                                    <small class="text-muted">Email cannot be changed</small>
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Password:</label>
                                    <form:password path="password" class="form-control" readonly="true" />
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Address:</label>
                                    <form:input path="address" type="text" class="form-control" />
                                </div>

                                <div class="mb-3">
                                    <label class="form-label">Phone:</label>
                                    <form:input path="phone" type="text" class="form-control" />
                                </div>

                                <button type="submit" class="btn btn-primary mt-3">Update User</button>
                                <a href="/admin/user/table-user" class="btn btn-secondary mt-3">Cancel</a>
                            </form:form>
                        </div>
                    </div>
                </div>

            </body>

            </html>