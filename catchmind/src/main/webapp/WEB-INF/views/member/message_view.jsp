<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Noto+Sans+KR&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <title>Document</title>
    <style>
    /* 폰트 초기화*/
    body, input, textarea, select, button, table {
    font-family: 'Nanum Gothic',  'Noto Sans KR', 'Malgun Gothic','맑은 고딕', 'dotum','돋움',sans-serif; 
    color: #222; font-size: 18px; line-height: 1.5;} 


     /*버튼*/
    .button {
        background-color: #4CAF50; /* Green */
        border: none;
        color: white;
        padding: 16px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        transition-duration: 0.4s;
        cursor: pointer;
        }

    .button2 {
        background-color: white; 
        color: black; 
        border: 2px solid #008CBA;
        }

    .button2:hover {
        background-color: #008CBA;
        color: white;
        }

    .content{
           
        width:80%;
        margin:auto;
       }
       
     .innerOuter{
        border:1px solid lightgray;
        width:90%;
        margin:auto;
        padding:5% 15%;
        background:white;
       }


        table *{margin:5px;}
        table{width:100%;}
    </style>
</head>
<body>
    
    <jsp:include page=""/>

    <div class="content">
        <br><br>
        <div class="innerOuter" style="background-color: rgb(243, 242, 242);">
            <h2>메세지 상세</h2>
            <br>
            
          
            <br><br>
            <table id="contentArea" align="center" class="table">
                <tr>
                    <th width="100">제목</th>
                    <td colspan="3">홈페이지 개편안내</td>
                </tr>
                <tr>
                    <th>작성자</th>
                    <td>admin</td>
                    <th>작성일</th>
                    <td>2020-05-20</td>
                </tr>

                <tr>
                    <th>내용</th>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td colspan="4"><p style="height:150px">6월1일까지 홈페이지 개편이 있을예정입니다.</p></td>
                </tr>
            </table>
            <center><button class="button button2" >목록으로</button></center>
            <br>
        </div>
        <br><br>
    </div>

    <jsp:include page=""/>
    
</body>
</html>