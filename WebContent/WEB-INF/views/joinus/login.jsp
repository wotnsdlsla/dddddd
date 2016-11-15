<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx">${pageContext.request.contextPath}</c:set>
<main>
<h2>로그인</h2>
<c:if test="${not empty errorMsg}">
	<div>${errorMsg}</div>
</c:if>
<form action="${ctx}/j_security_check" method="post">
	<div>
		<label>아이디</label> <input type="text" name="j_username" >
		<label>비번</label> <input type="text" name="j_password" >
		<input type="submit" value="로그인">
	</div>
</form>
</main>