package com.com.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.com.dto.MemberVO;
import com.com.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Resource(name="selectservice")
	MemberService  memberservice;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	// ����
	@RequestMapping(value = "index.do", method = RequestMethod.GET)
	public String index() {
		return "redirect:/";
	}

	// �α���
	@RequestMapping(value = "login.do")
	public ModelAndView loginCheck(MemberVO vo, HttpSession session) {
		System.out.println(vo.getUserid() + vo.getUserpw());
		boolean result = memberservice.login(vo, session);
		ModelAndView mv = new ModelAndView();
		if (result == true) {
			mv.setViewName("redirect:/");
		} else {
			mv.setViewName("loginpage");
		}
		return mv;
	}

	// �α׾ƿ�
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/");
		mv.addObject("msg", "�α׾ƿ� �Ǿ����ϴ�");
		return mv;
	}

	// ȸ������
	@RequestMapping(value = "join.do", method = RequestMethod.GET)
	public String join() {
		return "join";
	}

	// ��ǰ ������ �̵�
	@RequestMapping(value = "product.do", method = RequestMethod.GET)
	public String product() {
		return "product";
	}
	@RequestMapping(value = "shopping_basket.do", method = RequestMethod.GET)
	public String shopping_basket() {
		return "shopping_basket";
	}
	/*
	 * @RequestMapping(value= "buttontest.do", method = RequestMethod.GET) public
	 * String buttontest() { return "buttontest"; }
	 */
	// �α��� ������ �̵�
	@RequestMapping(value = "loginpage.do", method = RequestMethod.GET)
	public String loginpage() {
		return "loginpage";
	}

	// ȸ������ ������ �̵�
	@RequestMapping(value = "joinpage.do", method = RequestMethod.GET)
	public String joinpage() {
		return "joinpage";
	}

	// ä�� ������ �̵�
	@RequestMapping(value = "vegetablepage.do", method = RequestMethod.GET)
	public String vegetable() {
		return "vegetablepage";
	}
}