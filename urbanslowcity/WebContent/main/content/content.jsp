<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="admin.MainBoardVO" %>
<%@ page import="admin.MainDAO" %>
<HTML>
<HEAD>
	<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<TITLE>Urban Slow City </TITLE>
	<link rel='stylesheet' type='text/css' href='/css/company.css'>
	<link href="/css/activities.css" rel="stylesheet" type="text/css" />
	<script language='javascript' src='/js/common.js'></script>
</HEAD>
<body leftmargin="0" rightmargin="0" topmargin="0" bottommargin="0">

	<!--menu-->
	<jsp:include page="/main/menu.jsp" />
	<!--//menu-->
<%
MainBoardVO board = MainDAO.getInstance().getContent("content","main");
out.print(board.getContents());
%>
	<!--bottom-->
	<jsp:include page="/main/bottom.jsp" />
	<!--//bottom-->

</BODY>
</HTML>
