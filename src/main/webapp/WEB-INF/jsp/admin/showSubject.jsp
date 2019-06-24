<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show Subject</title>

<!-- 引入bootstrap -->
	<link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap.min.css">
	<!-- 引入JQuery  bootstrap.js-->
	<script src="${ctx}/js/jquery-3.2.1.min.js"></script>
	<script src="${ctx}/js/bootstrap.min.js"></script>
<!-- 自定义jquery -->
<script type="text/javascript">
$(function(){
	$("#btn1").click(function(){
		$(location).attr("href","beforeUpdateSubject?num=${sessionScope.subject.subjectId}");
	});
	$("#btn2").click(function(){
		$(location).attr("href","controlSubject");
	});
});
</script>

<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<!-- 自定义css -->
<style type="text/css">
h1{
margin-left:650px;
color:red;
}
body{
}
div{
 margin: 30px auto;
 width:700px;
 height:300px;
 border:green solid 2px;
}
button{
 margin-left:150px;
}
</style>
</head>
<body>
<h1>查看试题</h1>
	<div>
		<table class="table">
			<tbody>
				<tr class="success">
					<th scope="row">试题编号:&nbsp;&nbsp;&nbsp;${sessionScope.subject.subjectId}</th>
				</tr>
				<tr class="success">
					<th scope="row">试题题目:&nbsp;&nbsp;&nbsp;${sessionScope.subject.subjectTitle}</th>
				</tr>
				<tr class="success">
					<th scope="row">选项A:&nbsp;&nbsp;&nbsp;${sessionScope.subject.subjectOptionA}</th>
				</tr>
				<tr class="success">
					<th scope="row">选项B:&nbsp;&nbsp;&nbsp;${sessionScope.subject.subjectOptionB}</th>
				</tr>
				<tr class="success">
					<th scope="row">选项C:&nbsp;&nbsp;&nbsp;${sessionScope.subject.subjectOptionC}</th>
				</tr>
				<tr class="success">
					<th scope="row">选项D:&nbsp;&nbsp;&nbsp;${sessionScope.subject.subjectOptionD}</th>
				</tr>
				<tr class="success">
					<th scope="row">答案:&nbsp;&nbsp;&nbsp;${sessionScope.subject.subjectAnswer}</th>
				</tr>
				<tr class="success">
					<th scope="row">解析:&nbsp;&nbsp;&nbsp;${sessionScope.subject.subjectParse}</th>
				</tr>
				
			</tbody>
		</table>
		<button class="btn btn-warning" id="btn1">修改试题</button>
		<button class="btn btn-success" id="btn2">返回上一页</button>
	</div>
</body>
</html>