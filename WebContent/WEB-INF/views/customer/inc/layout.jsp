
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
<c:set var="ctx">${pageContext.request.contextPath}</c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="UTF-8">
<title>TT</title>



<link href="${ctx}/resource/customer/css/layout.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/resource/customer/css/<tiles:getAsString name="css" />" type="text/css" rel="stylesheet" />
<script src="${ctx}/resource/js/modernizr-custom.js" type="text/javascript">

	document.createElement("main");
</script>
</head>
<body>
	<tiles:insertAttribute name="header" />
	<%-- <jsp:include page="../../inc/header.jsp" /> --%>
	<!---------------------------------- visual------------------------------------>
	<tiles:insertAttribute name="visual" />
	<%-- <jsp:include page="../inc/visual.jsp" /> --%>
	<div id="body">
		<div class="content-container">
			<!-- a<br /> a<br /> a<br /> a<br /> a<br /> a<br /> a<br /> a<br />
			a<br /> a<br /> a<br /> a<br /> a<br /> a<br /> a<br /> a<br />
			a<br /> a<br /> a<br /> a<br /> -->
			<!---------------------------------- aside ------------------------------------>
			<tiles:insertAttribute name="aside" />   
			<%-- <jsp:include page="../inc/aside.jsp" /> --%>
			<!---------------------------------- main------------------------------------>
			<main> <tiles:insertAttribute name="main" /> </main>
		</div>
	</div>
	<!---------------------------------- footer ------------------------------------>
	<tiles:insertAttribute name="footer" />
	<%-- sp:include page="../../inc/footer.jsp" /> --%>
</body>
</html>

