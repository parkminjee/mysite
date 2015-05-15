<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ page import="com.sds.icto.mysite.vo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//	HttpSession session = request.getSession(false);
	MemberVo authMember = (MemberVo) session.getAttribute("authMember");
%>
<a href="/mysite/member" style="text-decoration: none"><h1>MySite</h1></a>
<ul>
	<c:choose>
	<c:when test="${empty authMember }">
		<li><a href="/mysite/member?a=loginform">로그인</a>
		<li>
		<li><a href="/mysite/member?a=joinform">회원가입</a>
		<li>
	</c:when>
	<c:otherwise>

		<li><a href="/mysite/member?a=uinfo">회원정보수정</a>
		<li>
		<li><a href="/mysite/member?a=logout">로그아웃</a>
		<li>
		<li>${authMember.name }님 안녕하세요 ^^;</li>
	</c:otherwise>
	</c:choose>
</ul>