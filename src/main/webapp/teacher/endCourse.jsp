<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head><script type="text/javascript" src="/SSM_studentInfo/static/utils/scripts/flat-ui.js"></script><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"><link rel="shortcut icon" href="/StudentInfo/utils/image/favicon.ico" type="image/x-icon" />
	<meta charset="UTF-8">
	<title>学生信息管理系统</title>

	<!-- 标题图标、CSS、js、jQ
    <link href="/online/image/favicon.ico" rel="shortcut icon">
    <link rel="stylesheet" type="text/css" href="/online/css/main.css">
    <script src="/online/js/fun.js" type="text/javascript"></script> -->
	<script type="text/javascript" src="/SSM_studentInfo/static/utils/js/jquery-3.3.1.min.js"></script>
	<!-- Loading Bootstrap -->
	<link href="/SSM_studentInfo/static/utils/css/vendor/bootstrap.min.css" rel="stylesheet">
	<!-- Loading Flat UI Pro -->
	<link href="/SSM_studentInfo/static/utils/css/flat-ui.css" rel="stylesheet">
	<!-- Loading Flat UI JS -->
	<script type="text/javascript" src="/SSM_studentInfo/static/utils/scripts/flat-ui.min.js"></script>

	<script type='text/javascript' src='/SSM_studentInfo/static/utils/scripts/particles.js'>

	</script><link href="/SSM_studentInfo/static/utils/css/animate.css" rel="stylesheet"></head>




<body><div id="particles-js"><canvas class="particles-js-canvas-el" width="1322" height="774" style="width: 100%; height: 100%;"></canvas></div>
<jsp:include page="teacherLeft.jsp" />
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<h5>录入成绩</h5>
			<h6>开班名 ${cname}</h6>
			<div class="row"><div class="col-md-12" >
				<div class="margin:0 15px" style="overflow-x: scroll;"><table  style="overflow:scroll;" class="table table-striped table-hover animated fadeIn">
					<tr>
						<th>学号</th>
						<th>姓名</th>
						<th>性别</th>
						<th>班级</th>
						<th>专业</th>
						<th>学院</th>
						<th>成绩</th>

					</tr>
					<c:forEach var="student" items="${sessionScope.lookList}">
						<tr>
							<td class="td_sid">${student.sid}</td>
							<td>${student.sname }</td>
							<td>${student.ssex}</td>
							<td>${student.classr}</td>
							<td>${student.profession}</td>
							<td>${student.college}</td>
							<td>
								<form id="form${student.sid}${cid}" class="form">
									<input type="hidden" name="sid" class="sid" value="${student.sid}">
									<input type="hidden" name="cid" class="cid" value="${cid}">
									<input type="text" name="grade" class="grade" value="">
									<input type="submit" value="添加" id="${cid}" class="btn_add" onclick="add(${cid},${student.sid})" )>
									<%--<input type="submit" value="添加" onclick="add(${cid},${student.sid})" oninput = "value=value.replace(/[^\d]/g,'')" maxlength="3">--%>
								</form>
							</td>


						</tr>

					</c:forEach>
				</table></div></div></div>
		</div>
	</div>
	<!-- 显示分页信息 -->
	<div class="row">
		<!--分页文字信息  -->
		<div class="col-md-6">当前 ${pageInfo.pageNum }页,总${pageInfo.pages }
			页,总 ${pageInfo.total } 条记录</div>
		<!-- 分页条信息 -->
		<div class="col-md-6">
			<nav aria-label="Page navigation">
				<ul class="pagination">
					<li><a href="/SSM_studentInfo/TeacherHandler/looksel/${requestScope.cid }/${requestScope.cname}/1">首页</a></li>
					<c:if test="${pageInfo.hasPreviousPage }">
						<li><a href="/SSM_studentInfo/TeacherHandler/looksel/${requestScope.cid }/${requestScope.cname}/${pageInfo.pageNum-1}"
							   aria-label="Previous"> <span aria-hidden="true">«</span>
						</a></li>
					</c:if>

					<c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
						<c:if test="${page_Num == pageInfo.pageNum }">
							<li class="active"><a href="#">${page_Num }</a></li>
						</c:if>
						<c:if test="${page_Num != pageInfo.pageNum }">
							<li><a href="/SSM_studentInfo/TeacherHandler/looksel/${requestScope.cid }/${requestScope.cname}/${page_Num }">${page_Num }</a></li>
						</c:if>

					</c:forEach>
					<c:if test="${pageInfo.hasNextPage }">
						<li><a href="/SSM_studentInfo/TeacherHandler/looksel/${requestScope.cid }/${requestScope.cname}/${pageInfo.pageNum+1 }"
							   aria-label="Next"> <span aria-hidden="true">»</span>
						</a></li>
					</c:if>
					<li><a href="/SSM_studentInfo/TeacherHandler/looksel/${requestScope.cid }/${requestScope.cname}/${pageInfo.pages}">末页</a></li>
				</ul>
			</nav>
		</div>
	</div>




</div>

<script type="text/javascript" src="/SSM_studentInfo/static/utils/scripts/flat-ui.js"></script><script src="/SSM_studentInfo/static/utils/scripts/bganimation.js"></script></body>
<script type="text/javascript">
	/*function add() {
		alert("ok");
		var cid=$(".form").children(".cid").val();
		var sid=$(".form").children(".sid").val();
		var grade=$(".form").children(".grade").val();
		alert(cid);
		alert(sid);
		alert(grade);
		$.ajax({
			async: false,
			url:"/SSM_studentInfo/TeacherHandler/addGrade",
			data:{"cid":cid,"sid":sid,"grade":grade},
			type:"POST",
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
			dataType: "text",
			success:function (data) {
				alert("添加成功");
			},
			error: function (data) {
				alert("error");
			}
		});
		return false;
	}*/
	function add(cid,sid) {
            $("#form"+sid+cid).submit(function(){
                alert(cid);
                alert(sid);
                var grade=$("#form"+sid+cid).children(".grade").val();
                alert(grade);
                $.ajax({
                    async: false,
                    type: "POST",
                    url: '/SSM_studentInfo/TeacherHandler/addGrade',
                    contentType : "application/x-www-form-urlencoded; charset=utf-8",
					data:{"cid":cid,"sid":sid,"grade":grade},
                    dataType: "text",
                    success: function (data) {
                        alert("添加成功");
                    },
                    error: function (data) {
                        console.log("error");
                    }
                });
                return false;
            })
        }
	/*function add(cid,sid) {
		$("#form"+sid+cid).submit(function(){
			alert(cid);
			alert(sid);
			$.ajax({
				async: false,
				type: "POST",
				url: '/SSM_studentInfo/TeacherHandler/addGrade',
				contentType : "application/x-www-form-urlencoded; charset=utf-8",
				data:$("#form"+sid+cid).serialize(),
				dataType: "text",
				success: function (data) {
					alert("添加成功");
				},
				error: function (data) {
					console.log("error");
				}
			})
			return false;
		})
	}*/



</script>

</html>