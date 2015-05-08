<%@ page import="com.sds.icto.mysite.vo.guestbookVo" %>
<%@ page import="com.sds.icto.mysite.dao.guestbookDao" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.List"%>

<%
	guestbookDao dao = new guestbookDao();
	List<guestbookVo> list = dao.fetchList();
%>

<!doctype html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mysite/assets/css/guestbook.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<div id="container">
		<div id="header">
			<jsp:include page="/views/include/header.jsp" flush="false" />
		</div>
		<div id="content">
			<div id="guestbook">
				<form action="/mysite/guestbook" method="post">
					<input type='hidden' name="a" value="add">
					<table border=1 width=500>
						<tr>
							<td>이름</td>
							<td><input type="text" name="name"></td>
							<td>비밀번호</td>
							<td><input type="password" name="pwd"></td>
						</tr>
						<tr>
							<td colspan=4><textarea name="meg" cols=60 rows=5></textarea></td>
						</tr>
						<tr>
							<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
						</tr>
					</table>
				</form>
				<br>
				<%
					for (guestbookVo vo : list) {
				%>
				<table width=510 border=1>
					<tr>
						<td><%=vo.getNo()%></td>
						<td><%=vo.getId()%></td>
						<td><%=vo.getDate()%></td>
						<td><a href="deleteform.jsp?no=<%=vo.getNo()%>">삭제</a></td>
					</tr>
					<tr>
						<td colspan=4><%=vo.getMeg()%></td>
					</tr>
				</table>
				<br>
				<%
					}
				%>
				</form>
				<ul>
					<li>
						<table>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td><a href="">삭제</a></td>
							</tr>
							<tr>
								<td colspan=4></td>
							</tr>
						</table> <br>
					</li>
				</ul>
			</div>
		</div>
		<div id="navigation">
			<jsp:include page="/views/include/navigation.jsp" />
		</div>
		<div id="footer">
			<jsp:include page="/views/include/footer.jsp" />
			//
			<p>(c)opyright 2014</p>
		</div>
	</div>
</body>
</html>