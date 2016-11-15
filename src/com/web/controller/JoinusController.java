package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.suwon.web.entities.Member;

@Controller
@RequestMapping("/joinus/*")
public class JoinusController {
	
	
	public JoinusController(){
		
	}
	
	@RequestMapping("login")
	public String login(){
		
		return "joinus.login";
	}

	@RequestMapping(value="agree",method=RequestMethod.GET)
	public String agree(){
		
		return "joinus.agree";
	}
	@RequestMapping(value="agree",method=RequestMethod.POST)
	public String agree(String agree){
		
		return "redirect:join";
	}
	@RequestMapping("join")
	public String join(){
		
		return "joinus.join";
	}
	@RequestMapping(value="join",method=RequestMethod.POST)
	public String join(Member member){
		
		return "redirect:../index";
	}
	
}
