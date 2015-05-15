<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.sds.icto.mysite.vo.guestbookVo"%>
<%@ page import="com.sds.icto.mysite.dao.guestbookDao"%>
<%@ page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8"%>


<!doctype html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mysite/assets/css/guestbook.css" rel="stylesheet"
	type="text/css">
<link href="/mysite/assets/css/user.css" rel="stylesheet"
	type="text/css">
<link href="/mysite/assets/css/button.css" rel="stylesheet"
	type="text/css">
<link href="/mysite/assets/css/vicons-font.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<div id="container">
		<div id="header">
			<jsp:include page="/views/include/header.jsp" flush="false" />
		</div>
		<div id="content">
			<div id="guestbook" class="delete-form">
				<form action="/mysite/guestbook" method="post">
				<input type='hidden' name="a" value="delete">
					<input type='hidden' name="no"
						value="<%=Integer.parseInt(request.getParameter("no"))%>">
					
						<label class="block-label">패스워드</label> <input name="pwd"
							type="password">
						<input type="submit" value="확인">
				</form>
				<a href="/mysite/guestbook?a=gusetbook">방명록 리스트</a>
			</div>
		</div>
		<div id="navigation">
			<jsp:include page="/views/include/navigation.jsp" flush="false" />
		</div>
		<div id="footer">
			<jsp:include page="/views/include/footer.jsp" flush="false" />
		</div>
	</div>
</body>
</html>