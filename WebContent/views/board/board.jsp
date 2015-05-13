
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fn"%>
<%@ page import="com.sds.icto.mysite.vo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/mysite/assets/css/main.css" rel="stylesheet" type="text/css">
<link href="/mysite/assets/css/board.css" rel="stylesheet"
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
				<div id="boardname">
					<h3>게시판이름</h3>
				</div>
				<div id="boardsub">
					<h6>게시판설명</h6>
				</div>
				<a href="/mysite/views/board/boardwrite.jsp">
					<button
						class="button button--antiman button--round-m button--text-medium button--border-medium">
						<i class="button__icon icon icon-plus"></i><span>글쓰기</span>

					</button>
				</a>
				<div>
					<table>
						<thead>
							<tr>
								<th scope="col">글번호</th>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col">작성일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>데이터</td>
								<td><a href="/mysite/views/board/boardread.jsp">데이터</a></td>
								<td>데이터</td>
								<td>데이터</td>
							</tr>
						</tbody>
					</table>
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