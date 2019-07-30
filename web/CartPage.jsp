<!doctype html>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html class="no-js " lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

        <title>Marketo</title>
        <link rel="icon" href="favicon.ico" type="image/x-icon">
        <!-- Favicon-->
        <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
        <!-- Custom Css -->
        <link rel="stylesheet" href="assets/css/main.css">
        <link rel="stylesheet" href="assets/css/color_skins.css">
    </head>
    <body class="theme-cyan">
        <!-- Page Loader -->
        <div class="page-loader-wrapper">
            <div class="loader">
                <div class="m-t-30"><img class="zmdi-hc-spin" src="assets/images/logo.svg" width="48" height="48" alt="Marketo"></div>
                <p>Please wait...</p>
            </div>
        </div>

        <!-- Overlay For Sidebars -->
        <div class="overlay"></div>

        <!-- Top Bar -->
        <nav class="navbar">
            <div class="col-12">        
                <div class="navbar-header">
                    <a href="javascript:void(0);" class="bars"></a>
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/home"><img src="assets/images/logo.svg" width="30" alt="Marketo"><span class="m-l-10"> Marketo</span></a>
                </div>
                <ul class="nav navbar-nav navbar-left">
                    <li><a href="javascript:void(0);" class="ls-toggle-btn" data-close="true"><i class="zmdi zmdi-swap"></i></a></li>            
                    <li class="hidden-sm-down">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-addon">
                                <i class="zmdi zmdi-search"></i>
                            </span>
                        </div>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
<!--                        <a href="javascript:void(0);" class="fullscreen hidden-sm-down" data-provide="fullscreen" data-close="true"><i class="zmdi zmdi-fullscreen"></i></a>-->
                    </li>
                    <!--<li><a href="#" class="mega-menu" data-close="true"><i class="zmdi zmdi-power"></i></a></li>-->
                    <li class=""><a href="javascript:void(0);" class="js-right-sidebar" data-close="true"><i class="zmdi zmdi-settings zmdi-hc-spin"></i></a></li>
                </ul>
            </div>
        </nav>

        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            <div class="menu">
                <ul class="list">
                    <c:if test="${userObj.firstName!=null}">
                        <li>
                            <div class="user-info">
                                <div class="image"><a href="${pageContext.request.contextPath}/profile.jsp"><img src="assets/images/profile_av.jpg" alt="User"></a></div>
                                <div class="detail">
                                    <h4>${userObj.firstName}</h4>
                                    <small>${userObj.jobTitle}</small>                        
                                </div>
                                <a href="${pageContext.request.contextPath}/UserProfileServlet" title="Profile"><i class="zmdi zmdi-account"></i></a>
                                <a href="${pageContext.request.contextPath}/Logout" title="Sign out"><i class="zmdi zmdi-power"></i></a>
                                <a href="${pageContext.request.contextPath}/home" title="Home"><i class="zmdi zmdi-home"></i></a>
                            </div>
                        </li>
                    </c:if>
                    <li> <a href="javascript:void(0);" class="menu-toggle">
                            <i class="zmdi zmdi-home">
                            </i><span>Categories</span>
                        </a>
                        <ul class="ml-menu">
                            <c:forEach items="${applicationScope.categories}" var="category">
                                <li><a href="ec-product.jsp?category=${category.categoryId}">${category.categoryName}</a> </li>
                                </c:forEach>

                        </ul>
                    </li>

                </ul>
            </div>
        </aside>

        <!-- Right Sidebar -->
        <aside id="rightsidebar" class="right-sidebar">
            <ul class="nav nav-tabs">
                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#setting"><i class="zmdi zmdi-settings zmdi-hc-spin"></i></a></li>
                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#activity">Activity</a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active slideRight" id="setting">
                    <div class="slim_scroll">
                        <div class="card">
                            <h6>Skins</h6>
                            <ul class="choose-skin list-unstyled">
                                <li data-theme="purple">
                                    <div class="purple"></div>
                                </li>                   
                               
                            </ul>                    
                        </div>
                        
                       
                    </div>                
                </div>       
                <div class="tab-pane right_chat pullUp" id="chat">
                    <div class="slim_scroll">
                        <div class="card">
                            <div class="search">                        
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search...">
                                    <span class="input-group-addon">
                                        <i class="zmdi zmdi-search"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <h6>Recent</h6>
                            <ul class="list-unstyled">
                                <li class="online">
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <img class="media-object " src="assets/images/xs/avatar4.jpg" alt="">
                                            <div class="media-body">
                                                <span class="name">Sophia</span>
                                                <span class="message">There are many variations of passages of Lorem Ipsum available</span>
                                                <span class="badge badge-outline status"></span>
                                            </div>
                                        </div>
                                    </a>                            
                                </li>
                                <li class="online">
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <img class="media-object " src="assets/images/xs/avatar5.jpg" alt="">
                                            <div class="media-body">
                                                <span class="name">Grayson</span>
                                                <span class="message">All the Lorem Ipsum generators on the</span>
                                                <span class="badge badge-outline status"></span>
                                            </div>
                                        </div>
                                    </a>                            
                                </li>
                                <li class="offline">
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <img class="media-object " src="assets/images/xs/avatar2.jpg" alt="">
                                            <div class="media-body">
                                                <span class="name">Isabella</span>
                                                <span class="message">Contrary to popular belief, Lorem Ipsum</span>
                                                <span class="badge badge-outline status"></span>
                                            </div>
                                        </div>
                                    </a>                            
                                </li>
                                <li class="me">
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <img class="media-object " src="assets/images/xs/avatar1.jpg" alt="">
                                            <div class="media-body">
                                                <span class="name">John</span>
                                                <span class="message">It is a long established fact that a reader</span>
                                                <span class="badge badge-outline status"></span>
                                            </div>
                                        </div>
                                    </a>                            
                                </li>
                                <li class="online">
                                    <a href="javascript:void(0);">
                                        <div class="media">
                                            <img class="media-object " src="assets/images/xs/avatar3.jpg" alt="">
                                            <div class="media-body">
                                                <span class="name">Alexander</span>
                                                <span class="message">Richard McClintock, a Latin professor</span>
                                                <span class="badge badge-outline status"></span>
                                            </div>
                                        </div>
                                    </a>                            
                                </li>                        
                            </ul>
                        </div>
                       
                    </div>
                </div>
                <div class="tab-pane slideRight" id="activity">
                    <div class="slim_scroll">
                        <div class="card">
                            
                            <ul class="list-unstyled activity">
                                <ul class="list-unstyled activity">
                                <c:if test="${userObj==null}">
                                    <li>
                                        <a href="javascript:void(0)">
                                            <a href="${pageContext.request.contextPath}/sign-in.jsp" class="btn l-cyan btn-round btn-lg btn-block waves-effect waves-light">Sign in</a>
                                            <a href="${pageContext.request.contextPath}/sign-up.jsp" class="btn l-cyan btn-round btn-lg btn-block waves-effect waves-light">Sign up</a>
                                        </a>
                                    </li>
                                </c:if>

                                <c:if test="${userObj!=null}">
                                    <li>
                                        <a href="javascript:void(0)">
                                            <a href="${pageContext.request.contextPath}/Logout" class="btn l-cyan btn-round btn-lg btn-block waves-effect waves-light">Sign out</a>
                                        </a>
                                    </li>
                                </c:if>

                            </ul>
                                
                            </ul>
                        </div>
                        
                    </div>
                </div>
            </div>
        </aside>
        
        <section class="content invoice">
            <div class="block-header">
                <div class="row">
                    <div class="col-lg-7 col-md-6 col-sm-12">
                        <h2>Invoice
                            <small class="text-muted">Welcome to Marketo</small>
                        </h2>
                    </div>
                    <div class="col-lg-5 col-md-6 col-sm-12">
                        <ul class="breadcrumb float-md-right">
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/home"><i class="zmdi zmdi-home"></i>Marketo</a></li>
                            <li class="breadcrumb-item"><a href="javascript:void(0);">Pages</a></li>
                            <li class="breadcrumb-item active">Invoice</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row clearfix">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="mt-40"></div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>#</th>                                                        
                                                    <th width="60px">Item</th>
                                                    <th>Product</th>
                                                    <th>Quantity</th>
                                                    <th>Total</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>

                                            <% int itemnumber = 1;%>
                                            <c:forEach items="${requestScope.items}" var="item">
                                                <tbody>
                                                    <tr>
                                                        <td><%= itemnumber++%></td>
                                                        <td><img src="assets/images/ecommerce/2.png" width="40" alt="Product img"></td>
                                                        <td><c:out value="${item.productName}"/></td>

                                                        <td><fmt:formatNumber value="${item.quantity}"/></td>

                                                        <td>><fmt:formatNumber value="${item.price}" type="currency" currencySymbol="$"/></td>
                                                        <td>
                                                            <form action="${pageContext.request.contextPath}/CartServlet" method="Post">


                                                                <button name="productId" value="${item.productId}" type="submit" class="btn btn-default waves-effect waves-float waves-red"><i class="zmdi zmdi-delete"></i></button>
                                                            </form>

                                                        </td>
                                                    </tr>

                                                </tbody>
                                            </c:forEach>   
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>
                                                    <c:if test="${requestScope.items.size()>0}">
                                                        <form action="${pageContext.request.contextPath}/CheckOutController" method="post">
                                                            <input value="CheckOut" class="btn btn-raised btn-primary btn-round waves-effect" type="submit" name="actionType"/>
                                                        </form>
                                                    </c:if>            
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <hr>

                        </div>
                    </div>                   
                </div>
            </div>
        </section>

        <!-- Jquery Core Js --> 
        <script src="assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
        <script src="assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
        <script src="assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
    </body>
</html>