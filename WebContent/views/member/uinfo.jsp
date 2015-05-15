<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.sds.icto.mysite.vo.*"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
	//	HttpSession session = request.getSession(false);
	MemberVo authMember = (MemberVo) session.getAttribute("authMember");
%>
<!doctype html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mysite/assets/css/user.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<div id="container">
		<div id="header">
			<jsp:include page="/views/include/header.jsp" flush="false" />
		</div>
		<div id="content">
		<div id="user">
		<h3>${authMember.name }님의 회원정보</h3>
			<table border="0" cellpadding="5" cellspacing="0">
				<tr>
					<td align=left height="30">이름 : </td>
					<td>${authMember.name }</td>
				</tr>
				<tr>
					<td align=left height="30">이메일 : </td>
					<td >${authMember.email }</td>
				</tr>
				<tr>
					<td align=left height="30">패스워드 : </td>
					<td>****</td>
				</tr>
				<tr>
					<td align=left height="30">성별 : </td>
					<td >${authMember.gender }</td>
				</tr>
			</table>
			<br>
			</div>
		</div>
		<div id="navigation">
			<c:import url="/views/include/navigation.jsp"/>
		</div>
		<div id="footer">
			<c:import url="/views/include/footer.jsp" />
		</div>
	</div>
</body>
</html>