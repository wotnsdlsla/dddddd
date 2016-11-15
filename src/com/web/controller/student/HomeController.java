package com.web.controller.student;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student/*")
public class HomeController {
		
	@RequestMapping("index")
	public String index(){
			
			return "student.root.index";
		}
}
