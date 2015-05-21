<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
						<input type="hidden" name="a" value="delete">
						<input type="hidden" value="${authMember.no}" id="member_no" name="member_no">
						<input type="hidden" value="${authMember.name}"id="member_name" name="member_name"> 
						<input type="hidden" value="${delete.no}"id="no" name="no"> 

						<p>정말로 삭제하시겠습니까?${param.no }</p>
						</form>
								<a href="/mysite/board?a=list">
									<button
										class="button button--antiman button--round-m button--text-medium button--border-medium">
										<i class="button__icon icon icon-plus"></i><span>취소</span>
									</button>
								</a>
								<a
									href="/mysite/board?a=delete&no=${param.no }">
									<button 
										class="button button--antiman button--round-m button--text-medium button--border-medium">
										<i class="button__icon icon icon-plus"></i><span>확인</span>
									</button>
								</a>

					

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