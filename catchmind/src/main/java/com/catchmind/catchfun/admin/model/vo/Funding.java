package com.catchmind.catchfun.admin.model.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Funding {
	
	private String fundingNo;		// 펀딩번호
	private String rewardNo;		// 리워드번호
	private String userNo;			// 회원번호
	private String projectNumber;	// 프로젝트번호
	private String fundingProduct;	// 펀딩해서 받은 제품	
	private int fundingCost;		// 펀딩금액
	private int fundingQuantity;	// 펀딩수량 	
	private Timestamp fundingDate;	// 펀딩일자
	private String fundingStatus;	// 펀딩상태
	private String paymentMethod;	// 결제방식 --> 결제 펀딩번호
	private int fundingSponsership;	// 후원금
	private String shipMemo;		// 배송요청사항
	private int usePoint;			// 사용 포인트
	
}
