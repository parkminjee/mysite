<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fn"%>
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
				<form method="post">
					<input type='hidden' name="no"
						value="<%=Integer.parseInt(request.getParameter("no"))%>">
					<input type='hidden' name="a" value="delete">
						<label class="block-label">패스워드</label> <input name="password"
							type="password" value="">
						<c:if test="${param.result }">
							<p>패스워드를 확인하십시오</p>
						</c:if>
						<a href="/mysite/views/guestbook/list.jsp">
							<button
								class="button button--antiman button--round-m button--text-medium button--border-medium">
								<i class="button__icon icon icon-plus"></i><span>확인</span>
							</button></a>
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