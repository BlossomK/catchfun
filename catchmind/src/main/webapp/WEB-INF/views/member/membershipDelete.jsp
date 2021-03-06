<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지_메인</title>
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Noto+Sans+KR&display=swap"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>

/* 폰트 초기화*/
body, input, textarea, select, button, table {
	font-family: 'Nanum Gothic', 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕',
		'dotum', '돋움', sans-serif;
	color: #222;
	font-size: 18px;
	line-height: 1.5;
}

/* 아이디찾기완료, 비밀번호찾기완료 CSS페이지*/
.tabcontent {
	margin-right: 305px;
	margin-left: 305px;
}

/*테이블*/
table {
	width: 600px;
	height: 340px;
	padding-top: 20px;
	padding-left: 100px;
	padding-right: 100px;
	margin: 0 auto;
	margin-top: 18px;
	margin-bottom: 50px;
}

textarea {
	width: 600px;
	height: 340px;
	padding-top: 20px;
	padding-left: 100px;
	padding-right: 100px;
	margin: 0 auto;
	text-align: left;
}
/*아이디표시 input*/
#userid {
	width: 600px;
	height: 60px;
	margin-bottom: 15px;
}

#agree {
	font-size: 20px;
}

.button3 {
	background-color: white;
	color: black;
	border: 2px solid #f44336;
	width: 120px;
	height: 40px;
}

.button3:hover {
	background-color: #f44336;
	color: white;
}

.wrap {
	width: 1000px;
	height: 1000px;
	margin: auto;
	text-align: center;
	font-size: 30px;
	color: black;
}

.wrap>#header {
	width: 100%;
	height: 5%;
	margin-bottom: 60px;
}

.wrap>#content {
	width: 100%;
	height: 70%;
	background-color: rgb(235, 235, 235);
}

.wrap>#content>#content_1 {
	width: 100%;
	height: 10%;
	margin-bottom: 10px;
}

.wrap>#content>#content_2 { /*border: 0.5px solid grey;*/
	
}

.wrap>#content>#content_3 { /*border: 0.5px solid grey;*/
	
}

.wrap>#content>#content_2>table {
	width: 100%;
	height: 80%;
	font-size: 15px;
}

.wrap>#content>#content_2>#table2 {
	background-color: rgb(243, 242, 242);
}

.wrap>#footer {
	width: 100%;
	height: 20%;
}
</style>
<!-- wrap>#content>#content_2>.w3-row2{width:100%; height:100%; overflow: scroll;} -->
</head>
<body>
<jsp:include page="../common/menubar.jsp" />
	<div class="wrap">

		<div id="content">
			<div id="content_2">
				<table>
					<tr>
						<td style="font-size: 40px; text-align: left;"><strong>회원탈퇴</strong></td>
						<td></td>
					</tr>
					<tr>
						<td colsapn="2" style="font-size: 17px; text-align: left;">
							어떤점이 불편하셨나요? 캐치펀의 서비스 개선에 참고하도록 하겠습니다.</td>
					</tr>
				</table>
			</div>
			<form action="membershipDelete.me" style="text-align: left; margin-left: 200px;" method="post">
				<input type="hidden" name="userNo" value="${loginUser.userNo}">
				<input type="text" name="reason" style="width: 600px; height: 200px;">
				<div id="content_3">
					<p
						style="font-size: 15px; text-align: left; color: rgb(175, 7, 7); margin-left: 100px;">
						<b>탈퇴 전, 꼭 확인하세요!</b><br> 탈퇴 전 반드시 공지사항의 유의 사항을 확인하시기 바랍니다.
					</p>

					<input type="checkbox" id="agree" name="agree" value="agree">
					<label for="agree" id="agree">상기 캐치펀 탈퇴 시 유의 사항을 확인하였습니다.<br></label>

					<button type="submit" class="button button3">탈퇴</button>
				</div>
			</form>

		</div>


	</div>
</body>
</html>