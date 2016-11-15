
<%@page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>수정페이지</h1>
	<form action="notice-edit" method="post">
		<fieldset>
			<legend>공지사항 수정정보 필드</legend>
			<table border="1">
				<tbody>

					<tr>
						<td>제목</td>
						<td colspan="3"><input type="text" name="title" value="${n.title}" /></td>

					</tr>
					<tr>
						<td>작성일</td>
						<td colspan="3"><fmt:formatDate pattern="yyyy-MM-dd"
								value="${n.regdate}" /></td>

					</tr>
					<tr>
						<td>작성자</td>
						<td>${n.writer}</td>
						<td>조회수</td>
						<td>${n.hit}</td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="3"><textarea name="content" rows="20" cols="60">${n.content}</textarea></td>

					</tr>

				</tbody>
			</table>
			<div>
				<input type="hidden" name="code" value="${n.code}"/>
				<input type="submit" value="적용"/> 
				<a href="notice-detail?code=${n.code}">취소</a>
			</div>
		</fieldset>
	</form>
</body>
</html>