
<%@page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%
	 String _code = request.getParameter("code");

	NoticeDao noticeDao = new MyBatisNoticeDao(); 
	Notice notice = noticeDao.get(_code);

	pageContext.setAttribute("n", notice); */
	/* pageContext.setAttribute("aa","notice"); 
	request.setAttribute("aa", "hello"); */
	/* String url = "jdbc:oracle:thin:@211.238.142.251:1521:orcl";
	
	String sql = "SELECT * FROM NOTICE_VIEW WHERE CODE= ?";
	String x = "";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection(url, "c##sist", "dclass");
	PreparedStatement st = con.prepareStatement(sql);
	
	st.setString(1, _code);
	
	ResultSet rs = st.executeQuery();
	
	String code = "";
	String title = "";
	String writer = "";
	Date regdate = null;
	String hit = "";
	String content = "";
	
	if (rs.next()) {
		code = rs.getString("code");
		title = rs.getString("title");
		writer = rs.getString("writer");
		regdate = rs.getDate("regdate");
		hit = rs.getString("hit");
		content = rs.getString("content");
	}
	rs.close();
	st.close();
	con.close();
	
	System.out.printf("name:%s,age:%s,phone:%s,address:%s,mid:%s,pwd:%s,gender:%s\n", name,age, phone,address,mid, pwd,gender ); 
%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<h1>수정페이지</h1>
	<form action="notice-reg" method="post" enctype="multipart/form-data">
		<fieldset>
			<legend>공지사항 수정정보 필드</legend>
			<table border="1">
				<tbody>

					<tr>
						<td>제목</td>
						<td ><input type="text" name="title" value="${n.title}" /></td>

					</tr>
					<tr>
						<td>첨부파일</td>
						<td ><input type="file" name="file" /></td>

					</tr>
					<tr>
						<td>첨부파일</td>
						<td ><input type="file" name="file" /></td>

					</tr>
					
					<tr>
						
						<td colspan="2"><textarea name="content" rows="20" cols="60">${n.content}</textarea></td>

					</tr>

				</tbody>
			</table>
			<div>
				
				<input type="submit" value="등록"/> 
				<a href="notice">취소</a>
			</div>
		</fieldset>
	</form>
</body>
</html>