<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:out value="안녕하세요"/>
<br>

<c:set var ="num" value="미생"/><br>

${num}<br>

<%
 String s = "안녕";
if(s.equals("안녕")){
	

%>

<script>
alert("안녕하세요~~~")
</script>

<%}%>
<hr>

<c:if test="${num =='미생' }">

<script>
alert('인생')

</script>

</c:if>

<%
ArrayList<String> arr = new ArrayList();

%>










</body>
</html>