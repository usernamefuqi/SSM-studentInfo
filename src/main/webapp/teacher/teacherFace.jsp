<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript" src="/SSM_studentInfo/static/utils/scripts/flat-ui.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link rel="shortcut icon" href="/SSM_studentInfo/static/utils/image/favicon.ico" type="image/x-icon" />
<meta charset="UTF-8">
<title>学生选课管理系统</title>
<script type="text/javascript" src="/SSM_studentInfo/static/utils/js/jquery-3.3.1.min.js"></script>
<!-- Loading Bootstrap -->
<link href="/SSM_studentInfo/static/utils/css/vendor/bootstrap.min.css" rel="stylesheet">
<!-- Loading Flat UI Pro -->
<link href="/SSM_studentInfo/static/utils/css/flat-ui.css" rel="stylesheet">
<!-- Loading animate -->
<link href="/SSM_studentInfo/static/utils/css/animate.css" rel="stylesheet">
<script type='text/javascript' src='/SSM_studentInfo/static/utils/scripts/particles.js'></script>
	<link href="/SSM_studentInfo/static/utils/css/animate.css" rel="stylesheet"></head>

<body>
<div id="particles-js">
	<canvas class="particles-js-canvas-el" width="1322" height="774" style="width: 100%; height: 100%;"></canvas>
</div>
	<div class="main">
		<div class="main_left" id="frmTitle">
			<jsp:include page="teacherLeft.jsp" />
		</div>

		<div class="main1">
			<div style="margin-top: 10rem;">
  				<h3 class="text-center bounceIn animated">欢迎 ${sessionScope.tname} 老师</h3>
				<h3 class="text-center flipInX animated" style="transition: all 1s;cursor:pointer;" onmouseover="javascript:this.style.fontSize='6rem';" onmouseout="javascript:this.style.fontSize='5rem';" id="timer"></h3>
  			</div>
		</div>
	</div>
	<script src="/SSM_studentInfo/static/utils/js/timer.js"></script>
<script type="text/javascript" src="/SSM_studentInfo/static/utils/scripts/flat-ui.js">
</script><script src="/SSM_studentInfo/static/utils/scripts/bganimation.js"></script></body>
</html>