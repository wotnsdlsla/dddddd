
<%@page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<main>
	<table border="1">
		<tbody>

			<tr>
				<td>제목</td>
				<td colspan="3">${n.title}</td>

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
				<td>첨부파일</td>
				<td colspan="3"><c:forEach var="f" items="${nf}"
						varStatus="status">
						<a href="../download?f=${f.src}">${f.src}</a>
						<c:if test="${!status.last}">
						,
					</c:if>
					</c:forEach></td>


			</tr>
			<tr>
				<td>내용</td>
				<td colspan="3"><c:forEach var="f" items="${nf}"
						varStatus="status">
						<img src="../upload/${f.src}" />
						<c:if test="${!status.last}">
						,
					</c:if>
					</c:forEach>${n.content}</td>

			</tr> 
		</tbody>
	</table>
	<div>
		이전글 :
		<c:if test="${prev.code==null}">
		이전글이없습니다
		</c:if>
		<c:if test="${prev.code!=null}">
			<a href="notice-detail?code=${prev.code}">${prev.title}</a>
		</c:if>
	</div>
	<div>
		다음글 :
		<c:if test="${empty next.code}">
		 다음글이없어요
		</c:if>
		<c:if test="${not empty next.code}">
			<a href="notice-detail?code=${next.code}">${next.title}</a>
		</c:if>
	</div>

	<div>
		<a href="notice">목록</a> <a href="notice-edit?code=${n.code}">수정</a> <input
			type="hidden" name="code" value="${n.code}" /> <a href="notice-del?code=${n.code}">삭제</a>
	</div>
	</main>
