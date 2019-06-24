<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Suceess</title>
<style type="text/css">
a{
 margin-left:600px;
}
</style>
</head>
<body>
<c:choose>
<c:when test="${sessionScope.url=='/addSubject'}">
<h1 align="center">录入试题,成功!!!</h1>
<a href="teacherIndex">5秒后自动跳转首页，如未跳转点击这里</a>
<%response.setHeader("refresh", "5,url=teacherIndex"); %>
</c:when>
<c:when test="${sessionScope.url=='/updateSubject' }">
<h1 align="center">修改试题,成功!!!</h1>
<a href="controlSubject">5秒后跳转管理试题页面,如未点击跳转这里</a>
<%response.setHeader("refresh", "5,url=controlSubject"); %>
</c:when>
<c:when test="${sessionScope.url=='/deleteSubject' }">
<h1 align="center">删除试题,成功!!!</h1>
<a href="controlSubject">5秒后跳转管理试题页面,如未点击跳转这里</a>
<%response.setHeader("refresh", "5,url=controlSubject"); %>
</c:when>

</c:choose>
</body>
</html>