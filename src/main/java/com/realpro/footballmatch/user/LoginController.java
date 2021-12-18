package com.realpro.footballmatch.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/login")
public class LoginController {

	@Autowired
	UserServiceImpl userService;

	@RequestMapping(value = "/login")
	public String login() {
		return "/login/login";
	}

	@RequestMapping(value = "/loginok", method = RequestMethod.POST)
	public String loginCheck(HttpSession session, UserVO vo) {
		String returnURL = "";

		if (session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}

		UserVO loginVO = userService.getUser(vo);

		if (loginVO != null) {
			System.out.println("로그인 성공!");
			session.setAttribute("login", loginVO);

			returnURL = "redirect:/match/list";
		} else {
			System.out.println("로그인 실패!");

			returnURL = "redirect:/login/login";
		}

		return returnURL;
	}

	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		System.out.println("logout");
		session.invalidate();
		return "redirect:/login/login";
	}
}
