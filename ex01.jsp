<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
ex01.jsp <br>

	
	
<%


	request.setAttribute("name", "request");
	session.setAttribute("name", "session");
	
%>


request : <%= request.getAttribute("name") %><br>
request : ${ requestScope.name } <br>  <!-- scope를 사용해서 가져와야한다 get이랑 같은의미-->
request : ${name }<br>   <!-- 보통이런식으로 많이 사용 -->
session : ${ sessionScope.name }<br>


  	
 <a href="resultParam.jsp">이동</a>



	
	<form action="resultParam.jsp">
	
	<input type="text" name="id"><br>
	<input type="text" name="pwd"><br>
	<input type="submit" value="로그인"><br>
	

</form>
<hr>
${ 5 eq 6 } => ${5 == 6}<br>
${ 5 ne 6 } => ${5 != 6}<br>
${ 5 gt 6 } => ${5 > 6}<br>
${ true and false } =>${ true && false }<br>
${ not true } => ${ !true }<br>
<hr>
	${'aaa' } <br>
	<%="aaa" %><br>
	<% out.print("aaa"); %>
	
	

</body>
</html>