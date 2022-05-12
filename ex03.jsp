<%@page import="jsp07.TestDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="dao" class= "jsp07.TestDAO"/>
<c:set var="dto" value="${dao.getUser() }"/>
dto : ${dto}<br>
${dto.getName() }, ${dto.getAddr() } <br>

<%
 TestDTO d = dao.getUser();
%>

<%= d.getName() %>, <%= d.getAddr() %>
<hr>

<c:set var="list" value="${dao.list()}"/> 
${ list[0].name }, ${ list[0].addr }<br> 
${ list[1].name }, ${ list[1].addr }<br> 
<hr>


<table border="1">
 <tr> <th>이름 </th> <th>주소 </th> </tr>
	
<c:forEach var="m" items="${list}">
<tr>

<td>${m.name } </td> <td>${m.addr } </td>
</tr>
</c:forEach>
</table>
<hr>

<c:import url="ex02.jsp"/>


<c:set var="se" value="세션" scope="session"/>

<a href="ex02.jsp">이동</a>

<c:remove var="se" scope="session"/>

<c:set var="n" value="홍길동4"/>

<c:choose> 
<c:when test="${n eq '홍길동'}">
홍길동이다

</c:when>

<c:when test="${n =='홍길동2'}">
홍길동형이다~
</c:when>

<c:otherwise>
엘스이다~~
</c:otherwise>

</c:choose>

</body>
</html>