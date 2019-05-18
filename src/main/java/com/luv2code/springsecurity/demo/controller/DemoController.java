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

	@GetMapping("/tri_1")
	public String tri1() {

		return "tri_1";
	}

	@GetMapping("/tri_2")
	public String tri2() {

		return "tri_2";
	}

	@GetMapping("/tri_3")
	public String tri3() {

		return "tri_3";
	}

	@GetMapping("/tri_4")
	public String tri4() {

		return "tri_4";
	}

	@GetMapping("/tri_5")
	public String tri5() {

		return "tri_5";
	}

	@GetMapping("/tri_6")
	public String tri6() {

		return "tri_6";
	}

	@GetMapping("/tri_7")
	public String tri7() {

		return "tri_7";
	}

	@GetMapping("/tri_8")
	public String tri8() {

		return "tri_8";
	}

	@GetMapping("/newDoor")
	public String doorFirst() {

		return "newDoor1";
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

	@GetMapping("/uncover_1")
	public String uncover_1() {

		return "uncover_1";
	}

	@GetMapping("/uncover_2")
	public String uncover_2() {

		return "uncover_2";
	}

	@GetMapping("/uncover_3")
	public String uncover_3() {

		return "uncover_3";
	}

	@GetMapping("/uncover_4")
	public String uncover_4() {

		return "uncover_4";
	}

	@GetMapping("/uncover_5")
	public String uncover_5() {

		return "uncover_5";
	}

	@GetMapping("/uncover_6")
	public String uncover_6() {

		return "uncover_6";
	}

	@GetMapping("/uncover_7")
	public String uncover_7() {

		return "uncover_7";
	}

	@GetMapping("/uncover_8")
	public String uncover_8() {

		return "uncover_8";
	}

	@GetMapping("/crypto_1")
	public String crypto_1() {

		return "crypto_1";
	}

	@GetMapping("/crypto_2")
	public String crypto_2() {

		return "crypto_2";
	}

	@GetMapping("/crypto_3")
	public String crypto_3() {

		return "crypto_3";
	}

	@GetMapping("/crypto_4")
	public String crypto_4() {

		return "crypto_4";
	}

	@GetMapping("/crypto_5")
	public String crypto_5() {

		return "crypto_5";
	}

	@GetMapping("/web_1")
	public String web_1() {

		return "web_1";
	}

	@GetMapping("/web_2")
	public String web_2() {

		return "web_2";
	}

	@GetMapping("/web_3")
	public String web_3() {

		return "web_3";
	}

	@GetMapping("/web_4")
	public String web_4() {

		return "web_4";
	}

	@GetMapping("/web_5")
	public String web_5() {

		return "web_5";
	}

	@GetMapping("/web_6")
	public String web_6() {

		return "web_6";
	}

	@GetMapping("/web_7")
	public String web_7() {

		return "web_7";
	}

	@GetMapping("/web_8")
	public String web_8() {

		return "web_8";
	}

	@GetMapping("/misc_1")
	public String misc_1() {

		return "misc_1";
	}

	@GetMapping("/misc_2")
	public String misc_2() {

		return "misc_2";
	}

	@GetMapping("/misc_3")
	public String misc_3() {

		return "misc_3";
	}

	@GetMapping("/misc_4")
	public String misc_4() {

		return "misc_4";
	}

	@GetMapping("/misc_5")
	public String misc_5() {

		return "misc_5";
	}

	@GetMapping("/misc_6")
	public String misc_6() {

		return "misc_6";
	}

	@GetMapping("/misc_7")
	public String misc_7() {

		return "misc_7";
	}

	@GetMapping("/misc_8")
	public String misc_8() {

		return "misc_8";
	}

	@GetMapping("/misc_9")
	public String misc_9() {

		return "misc_9";
	}

	@GetMapping("/math_1")
	public String math_1() {

		return "math_1";
	}

	@GetMapping("/math_2")
	public String math_2() {

		return "math_2";
	}

	@GetMapping("/math_3")
	public String math_3() {

		return "math_3";
	}

	@GetMapping("/math_4")
	public String math_4() {

		return "math_4";
	}

}
