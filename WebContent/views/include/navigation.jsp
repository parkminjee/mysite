<%@ page import="com.sds.icto.mysite.vo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//	HttpSession session = request.getSession(false);
	MemberVo authMember = (MemberVo) session.getAttribute("authMember");
%>
<ul>
	<%
		if (authMember == null) {
	%>
	<li class="selected">게스트</li>
	<%
		}else{
	%>
	<li class="selected"><%=authMember.getName()%></li>
	<%
	}
	%>
	<li><a href="guestbook">방명록</a></li>
	<li><a href="">게시판</a></li>
</ul>