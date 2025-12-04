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

                            <li><a href="<c:url value='/about'/>">Về chúng tôi</a></li>
                            <li><a href="<c:url value='/blog'/>">Tin tức & Blog</a></li>

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
                                <c:when test="${not empty sessionScope.user}">
                                    <li class="dropdown ms-3">
                                        <a href="#">
                                            <i class="bi bi-person fs-5 me-1"></i>
                                            <span>${sessionScope.user.fullName}</span>
                                            <i class="bi bi-chevron-down toggle-dropdown"></i>
                                        </a>
                                        <ul>
                                            <li><a href="<c:url value='/profile'/>">Thông tin cá nhân</a></li>
                                            <li><a href="<c:url value='/my-orders'/>">Đơn hàng của tôi</a></li>
                                            <li>
                                                <hr class="dropdown-divider">
                                            </li>
                                            <li><a href="<c:url value='/logout'/>">Đăng xuất</a></li>
                                        </ul>
                                    </li>
                                </c:when>

                                <c:otherwise>
                                    <li class="ms-lg-4"><a href="<c:url value='/login'/>">Đăng nhập</a></li>
                                    <li>
                                        <a href="<c:url value='/register'/>"
                                            style="background-color: var(--accent-color); color: white; padding: 8px 20px; border-radius: 50px; margin-left: 10px;">
                                            Đăng ký
                                        </a>
                                    </li>
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