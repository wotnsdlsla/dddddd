
<%@page import="java.util.List"%>

<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!-- Latest compiled and minified CSS -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<c:set var="ctx">${pageContext.request.contextPath}</c:set>
<meta charset="UTF-8">
<title>TT</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js">document.createElement("main");</script>  
</head>
<body>
	<%-- <tiles:insertAttribute name="header" />
	<jsp:include page="../../inc/header.jsp" /> --%>
	<!---------------------------------- visual------------------------------------>
	<%-- <tiles:insertAttribute name="visual" /> --%>
	<%-- <jsp:include page="../inc/visual.jsp" /> --%>
	<div id="body">
		<div class="content-container">
			<!-- a<br /> a<br /> a<br /> a<br /> a<br /> a<br /> a<br /> a<br />
			a<br /> a<br /> a<br /> a<br /> a<br /> a<br /> a<br /> a<br />
			a<br /> a<br /> a<br /> a<br /> -->
			<!---------------------------------- aside ------------------------------------>
		
			<%-- <jsp:include page="../inc/aside.jsp" /> --%>
			<!---------------------------------- main------------------------------------>
			 <tiles:insertAttribute name="main" /> 
		</div>
	</div>
	<!---------------------------------- footer ------------------------------------>
	<%-- <tiles:insertAttribute name="footer" /> --%>
	<%-- sp:include page="../../inc/footer.jsp" /> --%>
</body>
</html>

