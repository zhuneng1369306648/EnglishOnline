<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Exam</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入bootstrap -->
    <link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap.min.css">
    <!-- 引入JQuery  bootstrap.js-->
    <script src="${ctx}/js/jquery-3.2.1.min.js"></script>
    <script src="${ctx}/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn1").click(function(){
		var ids=${subjectIds};
		for(let i=0;i<20;i++){	
		var choose="input[name='subjectOption-"+ids[i]+"']:checked";
		if($(choose).val()==null){//判断单选框是否被选择
			alert("第"+(i+1)+"题还没有做出选择");
			return false;//通过return false 阻止表单的提交
		}
		}
	});
	setTimeout(function(){
		$("#form1").submit();
	},600000);//这里设置表单自动提交时间，单位是毫秒
});
</script>

<!--自定义css  -->
<style type="text/css">
#div2 {
	border: solid 2px red;
	height: 50px;
	font-size: 30px;
}

#tiles {
	margin-left: 1270px;
	margin-top: -40px;
}

#time {
	margin-left: 1000px;
	margin-top: -40px;
}

#div3 {
	font-size: 20px;
}

#div4 {
	border: solid 2px black;
	margin-left: 350px;
	width: 700px;
}

#btn1 {
	margin-left: 300px;
	height: 50px;
}

</style>
</head>
<body>
	<div id="div1">
		<div id="div2">
			You cannot improve your past, but you can improve your future. Once time is wasted, life is wasted. <input type="hidden" id="set-time" value="10" /><!-- 这里设置计时的时间 -->
			
				<div id='tiles'></div>
			</div>
			<script
				src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
			<script src="countdown-timer/js/index.js"></script>
		</div>
	</div>
		<div id="div4">
			<form action="getScore" method="post" id="form1">
				<c:forEach items="${subjects}" var="subject">
					<tr>${subject.subjectTitle}</tr>
					<br />
					<tr>
						<td><input type="radio"
							name="subjectOption-${subject.subjectId}"
							id="subjectOptionA-${subject.subjectId}" value="A">${subject.subjectOptionA}</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<td><input type="radio"
							name="subjectOption-${subject.subjectId}"
							id="subjectOptionB-${subject.subjectId}" value="B">${subject.subjectOptionB}</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<td><input type="radio"
							name="subjectOption-${subject.subjectId}"
							id="subjectOptionC-${subject.subjectId}" value="C">${subject.subjectOptionC}</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<td><input type="radio"
							name="subjectOption-${subject.subjectId}"
							id="subjectOptionD-${subject.subjectId}" value="D">${subject.subjectOptionD}</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</tr>
					<hr />
				</c:forEach>
				<button id="btn1" class="btn btn-success" type="submit">提交</button>
			</form>
		</div>
</body>
</html>
