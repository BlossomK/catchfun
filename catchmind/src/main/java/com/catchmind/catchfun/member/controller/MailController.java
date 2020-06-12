package com.catchmind.catchfun.member.controller;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.catchmind.catchfun.member.model.service.MailService;

@Controller
public class MailController {
	
	@Autowired
	MailService ms;
	
	@RequestMapping(value="")
	public ModelAndView board2(){
		
		
		ModelAndView mv = new ModelAndView();
		int ran = new Random().nextInt(900000) + 100000;
		
		System.out.println(ran);
		//mv.setViewName("test/email");
		mv.addObject("random", ran);
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="createEmailCheck.do")
	public String createEmailCheck(@RequestParam String userId, HttpServletRequest req){
		
		
		//이메일 인증
		int ran = new Random().nextInt(900000) + 100000;
		
		HttpSession session = req.getSession(true);
		String authCode = String.valueOf(ran);
		String subject = "캐치펀 회원가입 인증 코드 발급 안내 입니다.";
		StringBuilder sb = new StringBuilder();
		sb.append("귀하의 인증 코드는 " + authCode + "입니다.");
		
		System.out.println(authCode);
		
		if(ms.send(subject, sb.toString(), "khk7333@gmail.com", userId, null)) {
			// 메일 발송 성공
			return authCode;
		}else {
			// 메일 발송 실패
			return "fail";
		}
		
	}
	
	@RequestMapping(value="emailAuth.do")
	@ResponseBody
	public ResponseEntity<String> emailAuth(@RequestParam String authCode, @RequestParam String random, HttpSession session){
	
		System.out.println("authCode: " + authCode);
		System.out.println("random: " + random);
		
		String originalJoinCode = authCode;
		String originalRandom = random;
		
		//String originalJoinCode = (String) session.getAttribute("authCode");
		//String originalRandom = Integer.toString((int) session.getAttribute("random"));
		//System.out.println("originalRandom:" + originalRandom);
		if(originalJoinCode.equals(authCode) && originalRandom.equals(random))
		//if(originalJoinCode.equals(authCode))
				return new ResponseEntity<String>("complete", HttpStatus.OK);
			else return new ResponseEntity<String>("false", HttpStatus.OK);
			}

			
			

}
