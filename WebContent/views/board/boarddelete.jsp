<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/mysite/assets/css/main.css" rel="stylesheet"
	type="text/css">
<link href="/mysite/assets/css/user.css" rel="stylesheet"
	type="text/css">
<link href="/mysite/assets/css/button.css" rel="stylesheet"
	type="text/css">
<link href="/mysite/assets/css/vicons-font.css" rel="stylesheet"
	type="text/css">
<title>mysite</title>
</head>
<body>
	<div id="container">
		<div id="header">
			<c:import url="/views/include/header.jsp">
			</c:import>
		</div>
		<div id="wrapper">
			<div id="content">

				<div>
					<form id="login-form" name="loginform" method="post">
						<label class="block-label">패스워드</label> <input name="password"
							type="password" value="">
						<c:if test="${param.result }">
							<p>패스워드를 확인하십시오</p>
						</c:if>
						<a href="/mysite/views/board/board.jsp">
							<button
								class="button button--antiman button--round-m button--text-medium button--border-medium">
								<i class="button__icon icon icon-plus"></i><span>확인</span>
							</button></a>
					</form>
				</div>


			</div>
		</div>

		<div id="navigation">
			<c:import url="/views/include/navigation.jsp">
				<c:param name="type" value="main"></c:param>
			</c:import>
		</div>
		<div id="footer">
			<jsp:include page="/views/include/footer.jsp" />
		</div>
	</div>
</body>
</html>