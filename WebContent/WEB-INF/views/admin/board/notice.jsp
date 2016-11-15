
<%@page import="java.util.List"%>

<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta charset="UTF-8">

<main class="main">
<div>
	<h2 class="main-title">공지사항</h2>
	<div class="bread-crumb">
		<h3 class="hidden">이건브래드랙</h3>
		<ul class="">
			<li>home</li>
			<li>고객센터</li>
			<li>공지사항</li>
		</ul>
	</div>
	<div>
		<form>검색</form>


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
		<div class="table-container1">
		<table class="table">
			<thead>
				<tr class="tr">
					<td class="td">번호</td>
					<td class="td">제목</td>
					<td class="td">작성자</td>
					<td class="td">작성일</td>
					<td class="td">조회수</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="n" items="${list}">
					<tr>
						<td class="td">${n.code}</td>
						<td class="td"><a href="notice-detail?code=${n.code}">${n.title}</a></td>
						<td class="td">${n.writer}</td>

						<td class="td"><fmt:formatDate pattern="yyyy-MM-dd" value="${n.regdate}" /></td>
						<td class="td">${n.hit}</td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
		</div>

		<div>
			<a href="notice-reg">글쓰기</a>

		</div>
		<s:Pager />
	</div>
</div>
</main>
