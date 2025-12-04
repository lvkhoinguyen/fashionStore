<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <header id="header" class="header fixed-top d-flex align-items-center">

                <div class="d-flex align-items-center justify-content-between">
                    <a href="<c:url value='/'/>" class="logo d-flex align-items-center">
                        <img src="assets/img/logo-shop.png" alt="FashionShop">
                        <span class="d-none d-lg-block">FashionStyle</span>
                    </a>
                </div>

                <nav class="header-nav-menu d-none d-lg-block mx-4">
                    <ul class="d-flex align-items-center m-0 p-0 gap-4 list-unstyled">
                        <li><a href="<c:url value='/home'/>" class="nav-link text-dark fw-bold">Trang chủ</a></li>
                        <li><a href="<c:url value='/products?category=men'/>" class="nav-link text-dark">Nam</a></li>
                        <li><a href="<c:url value='/products?category=women'/>" class="nav-link text-dark">Nữ</a></li>
                        <li><a href="<c:url value='/products?category=kids'/>" class="nav-link text-dark">Trẻ em</a>
                        </li>
                        <li><a href="<c:url value='/sale'/>" class="nav-link text-danger fw-bold">Sale</a></li>
                    </ul>
                </nav>

                <div class="search-bar ms-auto me-3">
                    <form class="search-form d-flex align-items-center" method="GET" action="<c:url value='/search'/>">
                        <input type="text" name="keyword" placeholder="Tìm kiếm sản phẩm..."
                            title="Enter search keyword">
                        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
                    </form>
                </div>

                <nav class="header-nav">
                    <ul class="d-flex align-items-center">

                        <li class="nav-item d-block d-lg-none">
                            <a class="nav-link nav-icon search-bar-toggle" href="#">
                                <i class="bi bi-search"></i>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link nav-icon" href="<c:url value='/wishlist'/>">
                                <i class="bi bi-heart"></i>
                                <span class="badge bg-danger badge-number">
                                    <c:out value="${wishlistCount != null ? wishlistCount : 0}" />
                                </span>
                            </a>
                        </li>

                        <li class="nav-item dropdown me-3">
                            <a class="nav-link nav-icon" href="<c:url value='/cart'/>">
                                <i class="bi bi-bag"></i> <span class="badge bg-primary badge-number">
                                    <c:out value="${cartCount != null ? cartCount : 0}" />
                                </span>
                            </a>
                        </li>

                        <li class="nav-item dropdown pe-3">
                            <c:choose>
                                <c:when test="${not empty sessionScope.user}">
                                    <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#"
                                        data-bs-toggle="dropdown">
                                        <img src="${sessionScope.user.avatar != null ? sessionScope.user.avatar : '/assets/img/default-user.png'}"
                                            alt="Profile" class="rounded-circle">
                                        <span
                                            class="d-none d-md-block dropdown-toggle ps-2">${sessionScope.user.fullName}</span>
                                    </a>

                                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                                        <li class="dropdown-header">
                                            <h6>${sessionScope.user.fullName}</h6>
                                            <span>Khách hàng thân thiết</span>
                                        </li>
                                        <li>
                                            <hr class="dropdown-divider">
                                        </li>

                                        <li>
                                            <a class="dropdown-item d-flex align-items-center"
                                                href="<c:url value='/profile'/>">
                                                <i class="bi bi-person"></i>
                                                <span>Tài khoản của tôi</span>
                                            </a>
                                        </li>

                                        <li>
                                            <a class="dropdown-item d-flex align-items-center"
                                                href="<c:url value='/my-orders'/>">
                                                <i class="bi bi-box-seam"></i>
                                                <span>Đơn mua</span>
                                            </a>
                                        </li>

                                        <li>
                                            <hr class="dropdown-divider">
                                        </li>

                                        <li>
                                            <a class="dropdown-item d-flex align-items-center"
                                                href="<c:url value='/logout'/>">
                                                <i class="bi bi-box-arrow-right"></i>
                                                <span>Đăng xuất</span>
                                            </a>
                                        </li>
                                    </ul>
                                </c:when>

                                <c:otherwise>
                                    <div class="d-flex gap-2">
                                        <a href="<c:url value='/login'/>" class="btn btn-sm btn-outline-primary">Đăng
                                            nhập</a>
                                        <a href="<c:url value='/register'/>" class="btn btn-sm btn-primary">Đăng ký</a>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </li>

                    </ul>
                </nav>

            </header>