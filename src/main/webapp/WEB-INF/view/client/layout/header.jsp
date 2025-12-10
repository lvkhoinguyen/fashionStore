<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <header id="header" class="header d-flex align-items-center fixed-top">
                <div
                    class="container-fluid container-xl position-relative d-flex align-items-center justify-content-between">

                    <a href="<c:url value='/'/>" class="logo d-flex align-items-center">
                        <h1 class="sitename">Fashion Axis</h1>
                    </a>

                    <nav id="navmenu" class="navmenu">
                        <ul>
                            <li><a href="<c:url value='/'/>" class="active">Trang chủ</a></li>

                            <li class="dropdown"><a href="<c:url value='/shop'/>"><span>Sản phẩm</span> <i
                                        class="bi bi-chevron-down toggle-dropdown"></i></a>
                                <ul>
                                    <li><a href="<c:url value='/shop/men'/>">Quần áo Nam</a></li>
                                    <li><a href="<c:url value='/shop/women'/>">Quần áo Nữ</a></li>
                                    <li><a href="<c:url value='/shop/accessories'/>">Phụ kiện</a></li>
                                </ul>
                            </li>

                            <li><a href="<c:url value='/contact'/>">Liên hệ</a></li>

                            <li class="ms-lg-4">
                                <a href="#" data-bs-toggle="modal" data-bs-target="#searchModal">
                                    <i class="bi bi-search fs-5"></i>
                                </a>
                            </li>

                            <li>
                                <a href="<c:url value='/cart'/>" class="position-relative">
                                    <i class="bi bi-bag fs-5"></i>
                                    <c:if test="${cartCount > 0}">
                                        <span
                                            class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger"
                                            style="font-size: 10px;">
                                            ${cartCount}
                                        </span>
                                    </c:if>
                                </a>
                            </li>

                            <c:choose>
                                <c:when test="${not empty sessionScope.fullName}">
                                    <div class="d-flex d-none d-lg-block">
                                        <div class="dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" id="dropdownMenuLink"
                                                role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                Welcome, ${sessionScope.fullName}
                                            </a>
                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                                <li><a class="dropdown-item"
                                                        href="/show_User_Profile/${sessionScope.id}">Profile</a></li>
                                                <li><a class="dropdown-item" href="/logout">Logout</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </c:when>

                                <c:otherwise>
                                    <!-- Not logged in: show login/register -->
                                    <div class="d-flex">
                                        <a href="/login" class="text-decoration-none mr-2 text-white">Login</a>
                                        <span class="text-white mx-1">/</span>
                                        <a href="/register" class="text-decoration-none text-white">Register</a>
                                    </div>
                                </c:otherwise>
                            </c:choose>


                        </ul>
                        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
                    </nav>

                </div>
            </header>

            <div class="modal fade" id="searchModal" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-body">
                            <form action="<c:url value='/search'/>" method="GET" class="d-flex">
                                <input type="text" name="keyword" class="form-control me-2"
                                    placeholder="Tìm sản phẩm...">
                                <button type="submit" class="btn btn-primary">Tìm</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>