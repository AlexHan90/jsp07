<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> chkUser 페이지입니다.<br>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 


<fmt:requestEncoding value="utf-8"/>

${param.id }<br>
${param.pwd }<br>

<jsp:useBean id="dao" class="jsp07.TestDAO"/>
<c:if test="${dao.loginChk(param.id, param.pwd) ==0 }"/>
<script>
alert('로그인 성공')
</script>

<c:set var="n" value="${dao.loginChk(1,2) }"/>

n : ${ n}
<c:if test="${n == 0 }">
<b>n은 0이다</b>


</c:if>
<hr>
<jsp:useBean id="member" class="member.MemberDAO"/>
	<c:forEach var="mem" items="${member.getList() }">
	${mem.id }, ${mem.pwd }, ${mem.name }, ${mem.addr } <br>
	
	</c:forEach>



</body>
</html>