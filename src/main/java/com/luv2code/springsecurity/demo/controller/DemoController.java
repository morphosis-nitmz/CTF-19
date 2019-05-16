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

	@GetMapping("/error")
	public String Error() {

		return "errorpage";
	}

	@GetMapping("/tri1")
	public String tri1() {

		return "tri1";
	}

	@GetMapping("/tri2")
	public String tri2() {

		return "tri2";
	}

	@GetMapping("/tri3")
	public String tri3() {

		return "tri3";
	}

	@GetMapping("/tri4")
	public String tri4() {

		return "tri4";
	}

	@GetMapping("/firstDoor")
	public String doorFirst() {

		return "door1";
	}

	@GetMapping("/doorSecond")
	public String doorSecond() {

		return "door2";
	}

	@GetMapping("/nowDoorThird")
	public String nowDoorThird() {

		return "door3";
	}

	@GetMapping("/yhoooItsFlag")
	public String yhoooItsFlag() {

		return "doorflag";
	}

}
