
<%@page import="java.util.List"%>

<%@page import="java.util.Date"%>
<%-- <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	/* List<NoticeModel> list = new MyBatisNoticeDao().getList();
	pageContext.setAttribute("list", list);    */
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.strong {
	color: red;
	text-decoration: none;
	font_size: 1.2em
}
</style>
</head>
<body>
	<h5>
		<a href="">□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
			□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
			□□□■□□□□■□□□□■□□□□■□□□□■□□□■■■■□□□□□□□■■■■□□□■□□□□■□□□□□□■■■■□□□■□□□□■□□□□□■□□□□□■□□□□□□□□□□□□□
			□□□■□□□□■□□□□■□□□□■■□□□■□□■□□□□■□□□□□■□□□□■□□■□□□□■□□□□□■□□□□■□□■■□□□■□□□□□■□□□□□□□□□□□□□□□□□□□
			□□□■□□□□■□□□■□■□□□■■□□□■□□■□□□□□□□□□□■□□□□□□□■□□□□■□□□□□■□□□□■□□■■□□□■□□□□□■□□□□□□□□□□□□□□□□□□□
			□□□■□□□□■□□□■□■□□□■□■□□■□□■□□□□□□□□□□■□□□□□□□■□□□□■□□□□□■□□□□■□□■□■□□■□□□□□■□□□□□■□■□■■□□□■■■□□
			□□□■□□□□■□□■□□□■□□■□■□□■□□■□□■■■□□□□□■□□■■■□□■□□□□■□□□□□■□□□□■□□■□■□□■□□□□□■□□□□□■□■■□□■□■□□□■□
			□□□■□□□□■□□■□□□■□□■□□■□■□□■□□□□■□□□□□■□□□□■□□■□□□□■□□□□□■□□□□■□□■□□■□■□□■■□■□□□□□■□■□□□■□■■■■■□
			■□□■□■□□■□□■■■■■□□■□□□■■□□■□□□□■□□□□□■□□□□■□□■□□□□■□□□□□■□□□□■□□■□□□■■□□□□□■□□□□□■□■□□□■□■□□□□□
			■□□■□■□□■□■□□□□□■□■□□□■■□□■□□□■■□□□□□■□□□■■□□■□□□□■□□□□□■□□□□■□□■□□□■■□□□□□■□□□□□■□■□□□■□■□□□■□
			□■■□□□■■□□■□□□□□■□■□□□□■□□□■■■□■□□□□□□■■■□■□□□■■■■□□□□□□□■■■■□□□■□□□□■□□□□□■■■■■□■□■□□□■□□■■■□□
			□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
			□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□</a>
	</h5>
	<ul>
		<li><a href="../index.jsp">HOME</a></li>
		<li><a href="notice.jsp">NOTICE</a></li>
		<li>
	</ul>
	<form action="notice" method="get">
		<fieldset>
			<select name="t">
				<option value="NONE">분류선택</option>
				<option value="TITLE"
					<c:if test="${param.t=='TITLE'}">
				selected="selected"</c:if>>제목</option>
				<option value="CONTETN"
					<c:if test="${param.t=='CONTENT'}"> 
				selected="selected"</c:if>>내용</option>
				<option value="WRITER"
					<c:if test="${param.t=='WRITER'}">
				selected="selected"</c:if>>작성자</option>
			</select> <label>검색어</label> <input name="q" value="${param.q}" /> <input
				type="submit" value="검색" />
		</fieldset>
	</form>
	<table border="1">
		<thead>
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>조회수</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="n" items="${list}">
				<tr>
					<td>${n.code}</td>
					<td><a href="./notice-detail?code=${n.code}">${n.title}</a></td>
					<td>${n.writer}</td>

					<td><fmt:formatDate pattern="yyyy-MM-dd" value="${n.regdate}" /></td>
					<td>${n.hit}</td>
				</tr>
			</c:forEach>
			<%-- <%
            for(NoticeModel m : list){
         %>
			<tr>
				<td><%=m.getCode()%></td>
				<td><a href="./notice-detail.jsp?code=<%=m.getCode()%>"><%=m.getTitle()%></a></td>
				<td><%=m.getWriter()%></td>
				<td><%=m.getRegdate()%></td>
				<td><%=m.getHit()%></td>
			</tr>
			<%
            }

         %> --%>
		</tbody>

	</table>
	
	<div>
		<a href="notice-reg">글쓰기</a>

	</div>
	<div>
		<c:if test="${empty param.p }">
			<c:set var="page" value="1" />
		</c:if>

		<c:if test="${not empty param.p }">
			<c:set var="page" value="${param.p }" />
		</c:if>
		<c:set var="start" value="${page-(page-1)%5}" />
		<c:set var="end"
			value="${fn:substringBefore((count%10==0?count/10:count/10+1),'.')}" />
		<%-- ${(page%6)+1} --%>
		<div>${page}/${end}page</div>
		<div>end: ${end}</div>
		<div>
			<a href="notice?p=${(start==1)?1:start-1}&t=${param.t}&q=${param.q}">이전</a>
		</div>
		<ul>

			<c:forEach var="i" begin="0" end="4">
				<c:if test="${start+i<=end}">
					<c:if test="${page == start+i }">
						<li><a href="notice?p=${start+i}&t=${param.t}&q=${param.q}"
							class="strong">${start+i}</a></li>
					</c:if>

					<c:if test="${page != start+i }">
						<li><a href="notice?p=${start+i}&t=${param.t}&q=${param.q}">${start+i}</a></li>
					</c:if>
				</c:if>
			</c:forEach>
		</ul>
		<div>
			<a href="notice?p=${start+5}&t=${param.t}&q=${param.q}">다음</a>
		</div>
	</div>
</body>
</html>