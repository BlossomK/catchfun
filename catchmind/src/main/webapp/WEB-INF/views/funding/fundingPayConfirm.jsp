<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <title>Document</title>
</head>
<style>
    #outer{
        margin: auto;
        width: 700px;
        text-align: center;
    }
    #rewardArea{
        width: 700px;
        height: auto;
        border: 1px solid rgb(202, 202, 202);
        text-align: left;
        padding-left: 50px;
        padding-right: 50px;
        padding-top: 30px;
        padding-bottom: 30px;
        font-size: 15px;
    }
    #rewardArea td{
        padding-bottom: 10px;
    }
    .resultContent{
        text-align: right;
    }
    #payArea span{
        float : right;
        font-size: 17px;
    }
    #payArea div{
        padding-top: 10px;
        padding-bottom: 10px;
    }
    #payArea{
        width: 700px;
        height: auto;
        background-color: rgb(235, 235, 235);
        padding-left: 50px;
        padding-right: 50px;
        padding-top: 20px;
        padding-bottom: 20px;
        text-align: left;
        vertical-align: top;
        box-sizing: border-box;
        /* margin-left: 3px; */
    }
    #payArea td{
        border-bottom: 1px dotted gray;
        border-collapse: collapse;
        padding-bottom: 10px;
        padding-top: 10px;
        font-size: 15px;
    }
    #payArea th{
        padding-bottom: 10px;
        padding-top: 10px;
        font-size: 15px;
    }
    .payContent{
        /* float: right; */
        text-align: right;
    }
    #payAddress{
        width: 700px;
        height: auto;
        border: 1px solid rgb(202, 202, 202);
        padding-left: 50px;
        padding-right: 50px;
        padding-top: 30px;
        padding-bottom: 30px;
        font-size: 15px;
        text-align: left;
        margin-left: 3px;
    }
    #payAddress td{
        vertical-align: top;
        padding-bottom: 10px;
        padding-top: 10px;
        /* border-bottom: 1px dotted gray; */
    }
    #payAddress input{
        width: 400px;
        height: 20px;
        border-radius: 2px;
        border: 1px solid gray;
    }
    #next_btn{
        width: 150px;
        height: 50px;
        font-size: 15px;
        background-color:  rgb(31, 205, 211);
        border-radius: 5px;
        color: white;
        border: 1px solid rgb(31, 205, 211);
    }
    #cancel_btn{
        width: 150px;
        height: 50px;
        font-size: 15px;
        background-color:  rgb(190, 190, 190);
        border-radius: 5px;
        color: white;
        border: 1px solid rgb(202, 202, 202);
    }
    .btn{
        height: 30px;
        background-color:  rgb(190, 190, 190);
        border-radius: 2px;
        border: 1px solid rgb(202, 202, 202);
        color: white;
    }
    .btn2{
        height: 30px;
        background-color:   rgb(31, 205, 211);
        border-radius: 2px;
        border: 1px solid  rgb(31, 205, 211);
        color: white;
    }
</style>
<body>
    
    <jsp:include page="../common/menubar.jsp"/>
    
    <div id="outer">
        
        <table id="rewardArea">
            
            <!-- <h1>펀딩 완료</h1> -->
			<br><br>
            <thead id="resultArea">
                <tr>
                    <td colspan="2" style="font-size: 12px;">리워드/악세사리</td>
                </tr>
                <tr style="border: 1px solid black;">
                    <td>
                        <div>
                            <b style="font-size: 18px;">${ p.projectName }</b>
                            <p></p>
                        </div>        
                    </td>
                    <td class="resultContent">by ${ m.makerName }</td>
                </tr>
            </thead>   
            
            <tbody>
                <tr>
                    <td>펀딩번호</td>
                    <td class="resultContent">
                    	${ fundingNo }
                    	<%-- <c:forEach items="${ cfl }" var ="fl">
	                    	<c:choose>
	                    		<c:when test="">
	                    			${ fl.fundingNo }&nbsp;&nbsp;
	                    		</c:when>
	                    		<c:otherwise></c:otherwise>
	                    	</c:choose>
                    	</c:forEach> --%>
                    </td>
                </tr>
                <tr>
                    <td>펀딩 날짜</td>
                    <td class="resultContent"><fmt:formatDate value="${ f0.fundingDate }" pattern="yyyy-MM-dd hh:mm:ss" /></td>
                </tr>
                <tr>
                    <td>펀딩 마감일</td>
                    <td class="resultContent">${ p.projectFinishDate }</td>
                </tr>
                <tr>
                    <td>펀딩 상태</td>
                    <td class="resultContent" style="font-size: 20px; color:rgb(31, 205, 211)">
                    	<b>
						<c:choose>
							<c:when test="${ f0.fundingStatus eq 'N' }">
								결제 예약
							</c:when>
							<c:when test="${ f0.fundingStatus eq 'E' }">
								결제 취소 대기
							</c:when>
							<c:when test="${ f0.fundingStatus eq 'C' }">
								결제 취소 완료
							</c:when>
							<c:when test="${ f0.fundingStatus eq 'S' }">
								결제성공
							</c:when>
							<c:otherwise>
								결제실패
							</c:otherwise>
						</c:choose>
						</b>
					</td>
                </tr>
                <tr>
                	<form id="resultForm" action="requestCancel.pro?" method="post">
                		<input type="hidden" value="${ cfl }" id="originCfl">
                		<input type="hidden" name="fundingNo" value="${fundingNo }" >
                		<input type="hidden" name="pno" value="${ p.projectNumber }" >
                    	<td colspan="2">
                    		<c:choose>
                    			<c:when test="${ f0.fundingStatus eq 'N' }">
                    				<button type="button" class="btn2" style="width: 100%; height: 40px;" onclick="requestCancel();">결제 예약 취소</button>
                    			</c:when>
                    			<c:otherwise>
                    				<button type="button" disabled class="btn" style="width: 100%; height: 40px;" onclick="requestCancel();">결제 예약 취소</button>
                    			</c:otherwise>
                    		</c:choose>
                    	</td>
                	</form>
                	
                </tr>
            </tbody>
			
        </table>
        <br>
        
        
        <script>
        
        //결제 취소
        function requestCancel(){
        	
        	alert("정말로 결제를 취소하시겠습니까?");
        	
        	var originCfl = $("#originCfl").val(); 
        	//console.log(originCfl);
        	//var newCfl = encodeURI(originCfl);
        	
        	//$("#newCfl").val(newCfl);
			$("#resultForm").submit();

        }
        </script>
        

        <table id="payArea">
            <tr>
                <td colspan="2">
                
           	        <c:forEach items="${ cfl }" var ="fl">
                   		<div><b>${ fl.fundingTitle2 } (${ fl.fundingProduct })</b><span><fmt:formatNumber value="${ fl.fundingCost }" pattern="#,###" />원 (수량 ${ fl.fundingQuantity }개)</span></div>
                   	</c:forEach>
                
                </td>
            </tr>
            <tr>
                <td>펀딩금액</td>
                <td class="payContent" id="fSum"><fmt:formatNumber value="${ sum }" pattern="#,###"/>원</td>
            </tr>
            <tr>
                <td>후원금</td>
                <td class="payContent"><fmt:formatNumber value="${ f0.fundingSponsership }" pattern="#,###" />원</td>
            </tr>
            <tr>
                <td>배송비</td>
                <td class="payContent">3,000원</td>
            </tr>
            <tr>
                <td>포인트 사용</td>
                <td class="payContent">-<fmt:formatNumber value="${ f0.usePoint }" pattern="#,###" />원</td>
            </tr>
            <tr>
                <th>최종결제금액</th>
                <th class="payContent" style="font-size: 20px; color:rgb(31, 205, 211)"><fmt:formatNumber value="${ sum + f0.fundingSponsership + 3000 - f0.usePoint }" pattern="#,###" />원</th>
            </tr>
        </table>
        
        <br><br>


        <div style="text-align: left; margin-bottom: 10px;">
            <b style="font-size: 20px; ">결제 정보</b>&nbsp;&nbsp;<!-- <button class="btn">결제 정보 변경</button> -->
        </div>
        

        <table id="payAddress">
           	<tr>
                <td width="200px">결제번호</td>
                <td>${ f0.paymentMethod }</td>
            </tr>
            <tr>
                <td width="200px">결제방식</td>
                <td>신용(체크)카드</td>
            </tr>
	   <!-- <tr>
                <td width="200px">카드번호</td>
                <td>************1111</td>
            </tr> -->
        </table>
        <br><br>


        <div style="text-align: left; margin-bottom: 10px;">
            <b style="font-size: 20px; ">리워드 배송지</b>&nbsp;&nbsp;<button class="btn" onclick="location.href='mypageModify.me'">배송지 변경</button>
        </div>

        <table id="payAddress">
            <tr>
                <td width="200px">이름</td>
                <td>${ loginUser.userName }</td>
            </tr>
            <tr>
                <td width="200px">휴대폰 번호</td>
                <td>${ loginUser.phone }</td>
            </tr>
            <tr>
                <td width="200px">주소</td>
                <td>${ loginUser.address }</td>
            </tr>
            <tr>
                <td width="200px">배송시 요청사항 (선택)</td>
                <td>${ f0.shipMemo }</td>
            </tr>
            <!-- <tr>
                <td colspan="2"><button class="btn" style="width: 100%;">리워드 배송지 변경</button></td>
            </tr> -->
        </table>


        <br><br><br>
        <button type="button" id="next_btn" onclick="location.href='bookingList.me?chc=li'" >나의 펀딩 목록으로</button>
        <button type="button" id="cancel_btn" onclick="location.href='${ pageContext.servletContext.contextPath }';">홈으로</button>
    </div>
    <br><br><br>

<%-- <jsp:include page="../common/footer.jsp"/> --%>

</body>
</html>