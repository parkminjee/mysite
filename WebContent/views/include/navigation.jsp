<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fn"%>
<%@ page import="com.sds.icto.mysite.vo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//	HttpSession session = request.getSession(false);
	MemberVo authMember = (MemberVo) session.getAttribute("authMember");
%>
<ul>
	<c:choose>
		<c:when test="${type=='main' }">
			<li class="selected">${authMember.name }</li>
			<li><a href="guestbook">방명록</a></li>
			<li><a href="">게시판</a></li>
		</c:when>
		<c:when test="${type=='board' }">
			<li>게스트</li>
			<li><a href="guestbook">방명록</a></li>
			<li><a href="">게시판</a></li>
		</c:when>
		<c:otherwise>
			<li>게스트</li>
			<li><a href="guestbook">방명록</a></li>
			<li><a href="">게시판</a></li>
		</c:otherwise>
	</c:choose>

</ul>