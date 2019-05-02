package com.luv2code.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

	@GetMapping("/")
	public String showHome() {

		return "index";
	}

	@GetMapping("/home")
	public String Home() {

		return "home";
	}

	@GetMapping("/questionNo1")
	public String questionNo1() {

		return "questionNo1";
	}

	@GetMapping("/leaderboard")
	public String leaderboard() {

		return "leaderboard";
	}

	@GetMapping("/dashboard")
	public String dashboard() {

		return "dashboard";
	}

	@GetMapping("/contactUs")
	public String contactUs() {

		return "contact";
	}

	@GetMapping("/Questions")
	public String QuestionCardView() {

		return "QuestionCardView";
	}

	@GetMapping("/Rules")
	public String Rule() {

		return "rules";
	}

}
