<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.Timestamp"%>
<%@ page import="admin.MainDAO"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="article" class="admin.MainBoardVO" scope="page">
	<jsp:setProperty name="article" property="*"/>
</jsp:useBean>

<%
	article.setDisplayStartDay(new Timestamp(System.currentTimeMillis()));
	article.setDisplayEndDay(new Timestamp(System.currentTimeMillis()));
	int rtn = MainDAO.getInstance().insertContent(article);
	if(rtn>0){
		String category = article.getCategory();
		String url = "/admin/homepage/about_content.jsp";
		response.sendRedirect(url);
	}else{ %>
	<script>
	  alert("저장 중 오류가 발생하였습니다!");
	  history.go(-1);
	</script>
<%}	%>