<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>   <!--라이브러리 연동, jstl 문법사용가능-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:out value="안녕하세요"/>


<c:set var="num" value="안녕하세요"/>  
<br>

${num}<br>

<% 
String s = "안녕";
if(s.equals("안녕")) {
	
%>
<script>
alert("안녕")
</script>

<%}%>
<hr>

<c:if test="${num == '안녕하세요' }">
<script>
alert("얼럿~")
</script>


</c:if>

<% 
ArrayList<String> arr = new ArrayList<>();



arr.add("aaa");
arr.add("bbb");
arr.add("ccc");

%>



<c:set var="list" value="<%=arr%>"/>

<c:forEach var="a" items="${list}">

${a}<br>




</c:forEach>

<hr>

session : ${se}<br>
session : ${sessionScope.se}<br>



</body>
</html>