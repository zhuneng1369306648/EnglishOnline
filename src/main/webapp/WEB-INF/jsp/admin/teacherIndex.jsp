<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index-Teacher</title>

<!-- 自定义jquery -->
<script type="text/javascript">
	//检查是否有未输入的值
	$(function() {
		$("button:first").click(
				function() {
					var options=['A','B','C','D'];
					if ($("#subjectTitle").val() == ""
							||$("#subjectTitle").val() == null) {
						alert("试题题目不能为空");
						return false;
					}
					for(let i=0;i<4;i++){
						if ($("#subjectOption"+options[i]).val() == ""
							||$("#subjectOption"+options[i]).val() == null) {
						alert("选项"+options[i]+"不能为空");
						return false;
					}
					}
					if($("input[name='subjectAnswer']:checked").val()==null){
						alert("答案不能为空");
						return false;
					}
				});
	});
</script>

<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<!-- 引入bootstrap -->
	<link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap.min.css">
	<!-- 引入JQuery  bootstrap.js-->
	<script src="${ctx}/js/jquery-3.2.1.min.js"></script>
	<script src="${ctx}/js/bootstrap.min.js"></script>
<style type="text/css">



#div1 {
	margin-top: -740px;
	padding-top: 50px;
	float: right;
	width: 1270px;
	height: 740px;
	border: solid 2px black;
}

#div2 {
	margin-left: 140px;
}
</style>
</head>
<body>
	<jsp:include page="top.jsp"/>
    <div class="container" id="content">
        <div class="row">
			<jsp:include page="menu.jsp"/>
			<div class="col-md-10">
				<div class="panel panel-default">
				    <div class="panel-heading">
						<div class="row">
					    	<h1 style="text-align: center;">添加试题</h1>
						</div>
				    </div>
	<div id="panel-body">
		<form class="form-horizontal" role="form" method="post" action="addSubject">
			<div class="form-group">
				<label for="subjectTitle" class="col-sm-2 control-label">试题题目</label>
				<div class="col-sm-4">
					<input class="form-control" name="subjectTitle" placeholder="title"
						id="subjectTitle">
				</div>
			</div>
			<div class="form-group">
				<label for="subjectOptionA" class="col-sm-2 control-label">选项A</label>
				<div class="col-sm-3">
					<input class="form-control" name="subjectOptionA" placeholder="A"
						id="subjectOptionA">
				</div>
			</div>
			<div class="form-group">
				<label for="subjectOptionB" class="col-sm-2 control-label">选项B</label>
				<div class="col-sm-3">
					<input class="form-control" name="subjectOptionB" placeholder="B"
						id="subjectOptionB">
				</div>
			</div>
			<div class="form-group">
				<label for="subjectOptionC" class="col-sm-2 control-label">选项C</label>
				<div class="col-sm-3">
					<input class="form-control" name="subjectOptionC" placeholder="C"
						id="subjectOptionC">
				</div>
			</div>
			<div class="form-group">
				<label for="subjectOptionD" class="col-sm-2 control-label">选项D</label>
				<div class="col-sm-3">
					<input class="form-control" name="subjectOptionD" placeholder="D"
						id="subjectOptionD">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">答案</label> <label
					class="radio-inline"> <input type="radio"
					name="subjectAnswer" id="inlineRadio1" value="A"> A
				</label> <label class="radio-inline"> <input type="radio"
					name="subjectAnswer" id="inlineRadio2" value="B"> B
				</label> <label class="radio-inline"> <input type="radio"
					name="subjectAnswer" id="inlineRadio3" value="C"> C
				</label> <label class="radio-inline"> <input type="radio"
					name="subjectAnswer" id="inlineRadio3" value="D"> D
				</label>
			</div>
			<div class="form-group">
				<label for="subjectParse" class="col-sm-2 control-label">试题解析</label>
				<div class="col-sm-3">
					<textarea class="form-control" name="subjectParse"
						placeholder="description" id="subjectParse"></textarea>
				</div>
			</div>
			<div id="div2">
				<button class="btn btn-success" type="submit">录入</button>
				&nbsp;&nbsp;&nbsp;
				<button class="btn btn-info" type="reset">重置</button>
			</div>
		</form>
	</div>
			</div>

			</div>
		</div>
	</div>

    <div class="container" id="footer">
	    <div class="row">
		    <div class="col-md-12"></div>
	    </div>
	</div>

</body>
<script type="text/javascript">
    $("#nav li:nth-child(5)").addClass("active")
</script>
</html>