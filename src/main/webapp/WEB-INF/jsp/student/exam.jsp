<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>

<html>
<head>
    <title>课程考试</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入bootstrap -->
    <link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap.min.css">
    <!-- 引入JQuery  bootstrap.js-->
    <script src="${ctx}/js/jquery-3.2.1.min.js"></script>
    <script src="${ctx}/js/bootstrap.min.js"></script>
    <!-- 自定义jquery -->
<script type="text/javascript">
$(function(){

	$("#btn1").click(function(){
		$(location).attr("href","exam1");
	});
	$("#btn2").click(function(){
		$(location).attr("href","login.jsp");
	});
});
</script>

<style type="text/css">
#div1{
 margin-left:400px;
 margin-top:100px;
}
#div2{
 margin-left:400px;
 margin-top:10px;
}
</style>

</head>

<body>
<!-- 顶栏 -->
<jsp:include page="top.jsp"/>
<!-- 中间主体 -->
<div class="container" id="content">
    <div class="row">
        <jsp:include page="menu.jsp"/>
        <div class="col-md-10">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <h1 style="text-align: center;">课程考试</h1>
                    </div>
                </div>

                <div class="panel-body">
                    <div class="form-group ">
                        <label class="col-sm-2 control-label" >课程名</label>
                        <div class="col-sm-10">
                            <input readonly="readonly" type="text" class="form-control" name="name" value="${studentCourseCustom.course.name}">
                        </div>
                    </div>
                    <div class="form-group">
                        <div id="div1">
                           <button class="btn btn-default btn-xs btn-success" id="btn1">进行考试</button>
                        </div>
                    </div>
                     <div class="form-group">
                        <div id="div2">
                            <button class="btn btn-default btn-xs btn-info" onClick="location.href='${ctx}/student/saveExam?id=${studentCourseCustom.courseId}'">最终提交</button>
                        </div>
                    </div>
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

</html>
