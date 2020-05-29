<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Noto+Sans+KR&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
/* 메뉴바 영역 */
.header-area {width: 1200px; margin-left: 40px; color: gray; padding-top: 10px; margin-top: 20px; margin-bottom: 10px;
	top: 0; right: 0; bottom: 0; left: 0; margin: auto;
}

/* 메뉴 */
.header { display: table-cell; /* width:200px; */ padding-right: 40px; height: 35px; text-align: center; vertical-align: bottom;
	font-size: 25px; font-weight: 900; color: black; }

/* 검색바 */
#header_searchbar { margin-left: 1400px; margin-top: 10px; position : absolute; height: 50px; width: 5px;
	transform: translate(-50%, -50%); position: absolute; }


/* 로그인 부분*/
.login {
	position: relative;
	bottom:-6px;
	display: table-cell;
	font-size: 15px;
	color: gray;
	padding-left: 220px;
	padding-right: 0px;
}

/* 아이디발송요청 Buttom*/
.userid_request{
    width:600px;
    height:60px;
    margin-top: 25px;
    margin-bottom: 150px;
    background-color:rgb(224, 224, 224);
    color:rgb(63, 62, 62);
    font-size: 18px;
}

/* 임시비밀번호 재발급 Button*/
.password2{
    width:600px;
    height:60px;
    font-size:20px;
    color:black;
    background-color: rgb(224, 224, 224);
    margin:0 auto;
    margin-top: 25px;
    margin-bottom: 10px;
} 
input[type=text],input[type=password],input[type=email], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #28d7d7;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #188080;
}

input[type=submit] {
  width: 100%;
  background-color: #28d7d7;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #188080;
}

#email_btn{
width: 400px;
height: 40px;
}

#email_btn {
  background-color: #e7e7e7;;
  color: black;
  border: 2px solid #e7e7e7;
}

#email_btn:hover {background-color:white; }

#id_table{margin-top: 100px;}



    .wrap{width:1000px; height:1000px; margin:auto; 
        text-align: center; font-size: 30px; color: black;}
    .wrap>#header{width:100%; height:5%; margin-bottom:60px;}
    .wrap>#content{width:100%; height:70%;}
    .wrap>#content>#content_1{width:100%; height:25%;}
    .wrap>#content>#content_2{width:100%; height:75%; font-size:15px; background-color: rgb(243, 242, 242);}
    .wrap>#content>#content_1>table{width:40%; height:100%; padding:20px; font-size:15px;}
    .wrap>#footer{width:100%; height:20%;}
    </style>
     <!-- wrap>#content>#content_2>.w3-row2{width:100%; height:100%; overflow: scroll;} -->
</head>
<body>
    <div class="wrap">
        <div id="header">
            
            <div class="header-area">
                <div class="header">
                    <img src="images/catchfun_logo.png">
                </div>
                <div class="header">카테고리</div>
                <div class="header">오픈예정</div>
                <div class="header">프로젝트오픈</div>
                <div class="header">공지</div>
                <div class="header"></div>
                <div class="header login">
                <img src="images/bellicon32.png">&nbsp;&nbsp;&nbsp;&nbsp;
                <img src="images/usericon32.png"></div>
        
            </div>
        
            <form id="header_searchbar">
                <input type="text" name="input" class="input" id="search-input">
                <button type="reset" class="search" id="search-btn"></button>
        
            </form>
        
            <script>
        
        
         function expand() {
              $(".search").toggleClass("close");
              $(".input").toggleClass("square");
              if ($('.search').hasClass('close')) {
                $('input').focus();
              } else {
                $('input').blur();
              }
            }
            $('button').on('click', expand);
         
         
         </script>
        </div>

        <div id="content">
            <div id="content_1">
                <table id="table1">
                    <tr>
                        <td style="font-size:30px; text-align: left;"><strong>아이디∙비밀번호 찾기</strong></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colsapn="2" style="font-size:20px; text-align: left;">
                            포인트 적립, 사용내역입니다.
                        </td>
                    </tr>
                </table>
            </div>

            <div id="content_2">
              <div class="w3-container">
               
              
                <div class="w3-row">
                  <a href="javascript:void(0)" onclick="openCity(event, 'idfind');">
                    <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">아이디찾기</div>
                  </a>
                  <a href="javascript:void(0)" onclick="openCity(event, 'passwordfind');">
                    <div class="w3-third tablink w3-bottombar w3-hover-light-grey w3-padding">비밀번호찾기</div>
                  </a>
                  
                </div>
              
                <div id="idfind" class="w3-container city" style="display:none">
                   <center>
                    <table id="id_table">
                    <tr>
                        <td>
                            <form action="/action_page.php">
                            <input type="email" id="email" name="email" placeholder="이메일">
                            <label for="email">
                                <p style="text-align:left;">
                                    와디즈는 이메일을 아이디로 사용합니다. <br>
                                    소유하고 계신 계정을 입력해보세요. <br>
                                    가입여부를 확인해드립니다. <br>
                                </p></label>
                                <input type="submit" value="완료">
                        </td>
                        <td>  
                        </td>
                    </tr>
                    </center>
                   </table>
                </div>
              
                <div id="passwordfind" class="w3-container city" style="display:none">
                  <center>
                    <table id="id_table">
                    <tr>
                        <td>
                            <form action="/action_page.php">
                            <input type="email" id="email" name="email" placeholder="이메일">
                            <label for="email">
                                <p style="text-align:left;">
                                    회원가입한 이메일을 입력하시면. <br>
                                    이메일로 비밀번호를 발송해드립니다. <br>
                                </p></label>
                                <input type="submit" value="완료">
                        </td>
                        <td>  
                        </td>
                    </tr>
                    </center>
                   </table>
                </div>
              </div>

                <script>
                  function openCity(evt, cityName) {
                    var i, x, tablinks;
                    x = document.getElementsByClassName("city");
                    for (i = 0; i < x.length; i++) {
                      x[i].style.display = "none";
                    }
                    tablinks = document.getElementsByClassName("tablink");
                    for (i = 0; i < x.length; i++) {
                      tablinks[i].className = tablinks[i].className.replace(" w3-border-cyan", "");
                    }
                    document.getElementById(cityName).style.display = "block";
                    evt.currentTarget.firstElementChild.className += " w3-border-cyan";
                  }
                  </script>         
            </div>
        </div>

        <div id="footer"></div>

    </div>
</body>
</html>