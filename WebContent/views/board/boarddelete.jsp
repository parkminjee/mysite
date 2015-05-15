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
					<c:choose>
						<c:when test="${authMember.equals(member_name) }">
							<form id="login-form" name="loginform" method="post">
								<p>정말로 삭제하시겠습니까?</p>
								<a href="/mysite/views/board/board.jsp">
									<button
										class="button button--antiman button--round-m button--text-medium button--border-medium">
										<i class="button__icon icon icon-plus"></i><span>취소</span>
									</button>
								</a> <a href="/mysite/views/board/board.jsp">
									<button type="submit"
										class="button button--antiman button--round-m button--text-medium button--border-medium">
										<i class="button__icon icon icon-plus"></i><span>확인</span>
									</button>
								</a>

							</form>
						</c:when>

						<c:otherwise>
							<form id="login-form" name="loginform" method="post">
								<p>권한이 없습니다.</p>
								<a href="/mysite/board">
									<button
										class="button button--antiman button--round-m button--text-medium button--border-medium">
										<i class="button__icon icon icon-plus"></i><span>목록</span>
									</button>
								</a>
							</form>
						</c:otherwise>
					</c:choose>
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