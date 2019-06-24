<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jsp/taglib.jsp" %>

<html>
<head>
    <title>得分总结</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入bootstrap -->
    <link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap.min.css">
    <!-- 引入JQuery  bootstrap.js-->
    <script src="${ctx}/js/jquery-3.2.1.min.js"></script>
    <script src="${ctx}/js/bootstrap.min.js"></script>
    <style>
p {font-size:2.5em; color:blue} /* 14px/16=0.875em */
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
                        <h1 style="text-align: center;">分析总结</h1>
                    </div>
                </div>


                <div class="panel-body">
                 <form class="form-inline" role="form">
                      <div class="form-group">
                      <label >总得分&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
                           <input readonly="readonly" type="text" class="form-control" name="progress" value="${sessionScope.score}">
                      </div>
                      <div class="form-group">
                       <label >分</label>
                      </div>
       
                 </form>
                                      
                   <form class="form-inline" role="form">
                      <div class="form-group">
                      <label >冠词一共练习</label>
                           <input readonly="readonly" type="text" class="form-control" name="progress" value="${sessionScope.noun}">
                      </div>
                      <div class="form-group">
                       <label >题</label>
                      </div>
                 <div class="form-group">
                       <label >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp冠词练习准确</label>
                            <input readonly="readonly" type="text" class="form-control" name="progress" value="${sessionScope.nounTrue}">
                 </div>
                 <div class="form-group">
                       <label >题</label>
                      </div>
                 </form>
                 
                  <form class="form-inline" role="form">
                      <div class="form-group">
                      <label >语法一共练习</label>
                           <input readonly="readonly" type="text" class="form-control" name="progress" value="${sessionScope.grammer}">
                      </div>
                      <div class="form-group">
                       <label >题</label>
                      </div>
                 <div class="form-group">
                       <label >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp语法练习准确</label>
                            <input readonly="readonly" type="text" class="form-control" name="progress" value="${sessionScope.grammerTrue}">
                 </div>
                 <div class="form-group">
                       <label >题</label>
                      </div>
                 </form>
                  <form class="form-inline" role="form">
                      <div class="form-group">
                      <label >名词一共练习</label>
                           <input readonly="readonly" type="text" class="form-control" name="progress" value="${sessionScope.word}">
                      </div>
                      <div class="form-group">
                       <label >题</label>
                      </div>
                 <div class="form-group">
                       <label >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp名词练习准确</label>
                            <input readonly="readonly" type="text" class="form-control" name="progress" value="${sessionScope.wordTrue}">
                 </div>
                 <div class="form-group">
                       <label >题</label>
                      </div>
                 </form>
                  <form class="form-inline" role="form">
                      <div class="form-group">
                      <label >常用语共练习</label>
                           <input readonly="readonly" type="text" class="form-control" name="progress" value="${sessionScope.useword}">
                      </div>
                      <div class="form-group">
                       <label >题</label>
                      </div>
                 <div class="form-group">
                       <label >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp常用语练习准确</label>
                            <input readonly="readonly" type="text" class="form-control" name="progress" value="${sessionScope.usewordTrue}">
                 </div>
                 <div class="form-group">
                       <label >题</label>
                      </div>
                 </form>
                  <div class="form-group">
                       <c:if test="${sessionScope.usewordTrue<3 }">
                      <h1 align="center">常用语掌握的还不足，希望多练习常用语!</h1>
                      </c:if>
                      <c:if test="${sessionScope.usewordTrue>5 }">
                      <h1 align="center">常用语掌握的不错，继续加油!</h1>
                      </c:if>
                      <c:if test="${sessionScope.wordTrue<3 }">
                      <h1 align="center">名词练习掌握的还不足，希望多练习名词!</h1>
                      </c:if>
                       <c:if test="${sessionScope.wordTrue>5 }">
                      <h1 align="center">名词掌握的不错，继续加油!</h1>
                      </c:if>
                      <c:if test="${sessionScope.noneTrue<3 }">
                      <h1 align="center">冠词练习掌握的还不足，希望多练习冠词!</h1>
                      </c:if>
                      <c:if test="${sessionScope.noneTrue>5 }">
                      <h1 align="center">冠词掌握的不错，继续加油!</h1>
                      </c:if>
                      <c:if test="${sessionScope.wordTrue<3 }">
                      <h1 align="center">语法练习掌握的还不足，希望多练习语法!</h1>
                      </c:if>
                      <c:if test="${sessionScope.wordTrue>5 }">
                      <h1 align="center">语法掌握的还不错，继续加油!</h1>
                      </c:if>
                    </div>

           
                    
                    <div class="form-group">
                        <div class="col-sm-10">
                            <button class="btn btn-default btn-xs btn-info" onClick="location.href='${ctx}/student/showCourse'">点击返回</button>
                           
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