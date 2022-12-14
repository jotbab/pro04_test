<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path0" value="${pageContext.request.contextPath }"></c:set>
<link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="resources/css/normalize.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation-prototype.min.css">
<link href='https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css' rel='stylesheet' type='text/css'>
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/js/foundation.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.js"></script>
<%-- <link rel="stylesheet" href="${path0 }/include/foundation.css">
<link rel="stylesheet" href="${path0 }/include/app.css"> --%>
<script>
  $(document).ready(function(){
	  $(document).foundation();
  });
</script>

<!-- header css -->
<style>
.topbar-responsive {
  background: #2c3840;
  padding: 1rem 1.5rem;
}

.topbar-responsive .topbar-responsive-logo {
  color: #fefefe;
  vertical-align: middle;
}

.topbar-responsive .menu {
  background: #2c3840;
}

.topbar-responsive .menu li:last-of-type {
  margin-right: 0;
}

.topbar-responsive .menu a {
  color: #fefefe;
  transition: color 0.15s ease-in;
}

.topbar-responsive .menu a:hover {
  color: #c6d1d8;
}

@media screen and (max-width: 39.9375em) {
  .topbar-responsive .menu a {
    padding: 0.875rem 0;
  }
}

.topbar-responsive .menu .topbar-responsive-button {
  color: #fefefe;
  border-color: #fefefe;
  border-radius: 5000px;
  transition: color 0.15s ease-in, border-color 0.15s ease-in;
}

.topbar-responsive .menu .topbar-responsive-button:hover {
  color: #c6d1d8;
  border-color: #c6d1d8;
}

@media screen and (max-width: 39.9375em) {
  .topbar-responsive .menu .topbar-responsive-button {
    width: 100%;
    margin: 0.875rem 0;
  }
}

@media screen and (max-width: 39.9375em) {
  .topbar-responsive {
    padding: 0.75rem;
  }
  .topbar-responsive .top-bar-title {
    position: relative;
    width: 100%;
  }
  .topbar-responsive .top-bar-title span {
    position: absolute;
    right: 0;
    border: 1px solid #fefefe;
    border-radius: 5px;
    padding: 0.25rem 0.45rem;
    top: 50%;
    -webkit-transform: translateY(-50%);
        -ms-transform: translateY(-50%);
            transform: translateY(-50%);
  }
  .topbar-responsive .top-bar-title span .menu-icon {
    margin-bottom: 4px;
  }
}

@-webkit-keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}

@-webkit-keyframes slideDown {
  0% {
    -webkit-transform: translateY(-100%);
            transform: translateY(-100%);
  }
  100% {
    -webkit-transform: translateY(0%);
            transform: translateY(0%);
  }
}

@keyframes slideDown {
  0% {
    -webkit-transform: translateY(-100%);
            transform: translateY(-100%);
  }
  100% {
    -webkit-transform: translateY(0%);
            transform: translateY(0%);
  }
}

@media screen and (max-width: 39.9375em) {
  .topbar-responsive-links {
    -webkit-animation-fill-mode: both;
            animation-fill-mode: both;
    -webkit-animation-duration: 0.5s;
            animation-duration: 0.5s;
    width: 100%;
    -webkit-animation: fadeIn 1s ease-in;
            animation: fadeIn 1s ease-in;
  }
}

</style>
<!-- header css end -->
<!-- footer css start -->
<style>
.marketing-site-footer {
  background: #2c3840;
  color: #8aa0ae;
  padding: 2rem 0 0;
}

.marketing-site-footer .marketing-site-footer-menu-social a {
  color: #fefefe;
}

.marketing-site-footer .column-block {
  margin-bottom: 30px;
}

.marketing-site-footer > .row {
  margin-bottom: 1rem;
}

@media screen and (max-width: 39.9375em) {
  .marketing-site-footer .columns {
    margin-bottom: 2rem;
  }
}

.marketing-site-footer-name {
  color: #fefefe;
  margin-bottom: 1rem;
  font-size: 2rem;
}

.marketing-site-footer-title {
  color: #fefefe;
  margin-bottom: 1rem;
  font-size: 1.25rem;
}

.marketing-site-footer-block {
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  margin-bottom: 1rem;
}

.marketing-site-footer-block .fa {
  font-size: 2rem;
  color: #020304;
}

.marketing-site-footer-block p {
  margin-left: 1rem;
  line-height: 1.125rem;
}

.marketing-site-footer-bottom {
  background: #020304;
  padding: 1rem 0;
}

.marketing-site-footer-bottom p,
.marketing-site-footer-bottom .menu {
  margin-bottom: 0;
}

.marketing-site-footer-bottom .marketing-site-footer-bottom-links {
  -webkit-justify-content: flex-end;
      -ms-flex-pack: end;
          justify-content: flex-end;
}

.marketing-site-footer-bottom .marketing-site-footer-bottom-links a {
  color: #8aa0ae;
}

@media screen and (max-width: 63.9375em) {
  .marketing-site-footer-bottom .marketing-site-footer-bottom-links {
    -webkit-justify-content: center;
        -ms-flex-pack: center;
            justify-content: center;
  }
}

@media screen and (max-width: 63.9375em) {
  .marketing-site-footer-bottom {
    text-align: center;
  }
}
</style>
<!-- footer css end -->

<!-- board css start -->
<style>
ul { list-style:none; }
#gnb > ul > li[role="menuitem"] { height:38px; }
#gnb > ul > li.menu-text[role="menuitem"] { padding-top:0px; padding-bottom:0px; }
.h1 { padding-top:0.9rem; padding-bottom:0.3rem; }
.container { clear:both; width:1200px; margin:0 auto; }
.container::after { content:""; display:block; width:100%; clear:both; }
#table1 th { border-bottom:1px solid #fff; }
</style>
<!-- board css end -->