<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Subject</title>

<!-- 引入bootstrap -->
	<link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap.min.css">
	<!-- 引入JQuery  bootstrap.js-->
	<script src="${ctx}/js/jquery-3.2.1.min.js"></script>
	<script src="${ctx}/js/bootstrap.min.js"></script>
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
<script type="text/javascript">
$(function(){//在修改前先将表单的值回显
	$("#subjectTitle").attr("value","${sessionScope.subject.subjectTitle}");
	$("#subjectOptionA").attr("value","${sessionScope.subject.subjectOptionA}");
	$("#subjectOptionB").attr("value","${sessionScope.subject.subjectOptionB}");
	$("#subjectOptionC").attr("value","${sessionScope.subject.subjectOptionC}");
	$("#subjectOptionD").attr("value","${sessionScope.subject.subjectOptionD}");
    var subjectAnswer="${sessionScope.subject.subjectAnswer}";
    if(subjectAnswer=="A"){
    	$("#subjectAnswerA").attr("checked","checked");
    }
    if(subjectAnswer=="B"){
    	$("#subjectAnswerB").attr("checked","checked");
    }
    if(subjectAnswer=="C"){
    	$("#subjectAnswerC").attr("checked","checked");
    }
    if(subjectAnswer=="D"){
    	$("#subjectAnswerD").attr("checked","checked");
    }
    //注意textarea没有value属性
    $("#subjectParse").val("${sessionScope.subject.subjectParse}");
});
</script>
<script type="text/javascript">
$(function(){
	$("button:last").click(function(){
		$(location).attr("href","controlSubject");
	});
});
</script>

<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
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
					    	<h1 style="text-align: center;">修改试题</h1>
						</div>
				    </div>
	<div id="panel-body">
		<form class="form-horizontal" method="post" action="updateSubject?num=${sessionScope.subject.subjectId} ">
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
					name="subjectAnswer" id="subjectAnswerA" value="A"> A
				</label> <label class="radio-inline"> <input type="radio"
					name="subjectAnswer" id="subjectAnswerB" value="B"> B
				</label> <label class="radio-inline"> <input type="radio"
					name="subjectAnswer" id="subjectAnswerC" value="C"> C
				</label> <label class="radio-inline"> <input type="radio"
					name="subjectAnswer" id="subjectAnswerD" value="D"> D
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
				<button class="btn btn-success" type="submit">修改</button>
				&nbsp;&nbsp;&nbsp;
				<button class="btn btn-info" type="button">返回</button>
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
    $("#nav li:nth-child(4)").addClass("active")
</script>
</html>