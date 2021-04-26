<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>끼니끼리 관리자페이지</title>
    
</head>

<body>


        <div class="navbar-wrapper">
            <div class="navbar-logo">
                <a class="mobile-menu waves-effect waves-light" id="mobile-collapse" href="#!">
                    <i class="ti-menu"></i>
                </a>
                <div class="mobile-search waves-effect waves-light">
                    <div class="header-search">
                        <div class="main-search morphsearch-search">
                            <div class="input-group">
                                <span class="input-group-prepend search-close"><i class="ti-close input-group-text"></i></span>
                                <input type="text" class="form-control" placeholder="Enter Keyword">
                                <span class="input-group-append search-btn"><i class="ti-search input-group-text"></i></span>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/resources/logo/kk-logo-black.png" alt="끼니끼리로고" height="50" width="auto"/></a>
                    <!-- 로고 입력 -->
                    <h3></h3>
                    <!-- <img class="img-fluid" src="assets/images/logo.png" alt="Theme-Logo" /> -->
                </a>
                <a class="mobile-options waves-effect waves-light">
                    <i class="ti-more"></i>
                </a>
            </div>
            <div class="navbar-container container-fluid">
                <ul class="nav-left">
                    <li>
                        <div class="sidebar_toggle"><a href="javascript:void(0)"><i class="ti-menu"></i></a></div>
                    </li>
                    <li>
                        <a href="#!" onclick="javascript:toggleFullScreen()" class="waves-effect waves-light">
                            <i class="ti-fullscreen"></i>
                        </a>
                    </li>
                </ul>
                <ul class="nav-right">
                    <li class="header-notification">
                        <a href="#!" class="waves-effect waves-light">
                            <i class="ti-bell"></i>
                            <span class="badge bg-c-red"></span>
                        </a>
                        <ul class="show-notification">
                            <li>
                                <h6>Notifications</h6>
                                <label class="label label-danger">New</label>
                            </li>
                            <li class="waves-effect waves-light">
                                <div class="media">
                                    <img class="d-flex align-self-center img-radius" src="assets/images/avatar-2.jpg" alt="Generic placeholder image">
                                    <div class="media-body">
                                        <h5 class="notification-user">John Doe</h5>
                                        <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                        <span class="notification-time">30 minutes ago</span>
                                    </div>
                                </div>
                            </li>
                            <li class="waves-effect waves-light">
                                <div class="media">
                                    <img class="d-flex align-self-center img-radius" src="assets/images/avatar-4.jpg" alt="Generic placeholder image">
                                    <div class="media-body">
                                        <h5 class="notification-user">Joseph William</h5>
                                        <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                        <span class="notification-time">30 minutes ago</span>
                                    </div>
                                </div>
                            </li>
                            <li class="waves-effect waves-light">
                                <div class="media">
                                    <img class="d-flex align-self-center img-radius" src="assets/images/avatar-3.jpg" alt="Generic placeholder image">
                                    <div class="media-body">
                                        <h5 class="notification-user">Sara Soudein</h5>
                                        <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                        <span class="notification-time">30 minutes ago</span>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="user-profile header-notification">
                        <a href="#!" class="waves-effect waves-light">
                            <img src="assets/images/avatar-1.jpg" class="img-radius" alt="User-Profile-Image">
                            <span>Admin</span>
                            <i class="ti-angle-down"></i>
                        </a>
                        <ul class="show-notification profile-notification">
                            <li class="waves-effect waves-light">
                                <a href="${pageContext.request.contextPath}/admin/staff.do">
                                    <i class="ti-settings"></i> 스탭관리
                                </a>
                            </li>
                            <li class="waves-effect waves-light">
                                <a href="${pageContext.request.contextPath}/admin/hostup.do">
                                    <i class="ti-user"></i> 호스트 인증 관리
                                </a>
                            </li>
                           <li class="waves-effect waves-light">
                                <a href="${pageContext.request.contextPath}/admin/dormancy.do">
                                    <i class="ti-email"></i> 휴면 계정
                                </a>
                            </li>
                            <!-- <li class="waves-effect waves-light">
                                <a href="auth-lock-screen.html">
                                    <i class="ti-lock"></i> Lock Screen
                                </a>
                            </li> -->
                            <li class="waves-effect waves-light">
                                <a href="${pageContext.request.contextPath}/index.jsp">
                                    <i class="ti-layout-sidebar-left"></i> 로그아웃
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        
</body>

</html>