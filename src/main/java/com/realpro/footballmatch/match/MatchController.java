package com.realpro.footballmatch.match;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MatchController {

	@Autowired
	MatchService matchService;

	@RequestMapping(value = "/match/list", method = RequestMethod.GET)
	public String matchList(Locale locale, Model model) {
		model.addAttribute("list", matchService.getMatchList());
		return "match/list";
	}

	@RequestMapping(value = "/match/add", method = RequestMethod.GET)
	public String addForm() {
		return "match/addform";
	}

	@RequestMapping(value = "/match/addok", method = RequestMethod.POST)
	public String addOK(MatchVO vo) {
		int i = 0;
		
		i = matchService.insertMatch(vo);

		if (i == 0) {
			System.out.println("데이터 추가 실패!");
		} else {
			System.out.println("데이터 추가 성공!");
		}

		return "redirect:list";
	}

	@RequestMapping(value = "/match/editform/{id}", method = RequestMethod.GET)
	public String editForm(@PathVariable("id") int id, Model model) {
		MatchVO matchVO = matchService.getMatch(id);
		model.addAttribute("matchVO", matchVO);
		return "match/editform";
	}

	@RequestMapping(value = "/match/editok", method = RequestMethod.POST)
	public String editOK(MatchVO vo) {
		int i = 0;
		
		i = matchService.updateMatch(vo);

		if (i == 0) {
			System.out.println("데이터 수정 실패!");
		} else {
			System.out.println("데이터 수정 성공!");
		}

		return "redirect:list";
	}

	@RequestMapping(value = "/match/deleteok/{id}", method = RequestMethod.GET)
	public String deletePost(@PathVariable("id") int id) {
		int i = matchService.deleteMatch(id);

		if (i == 0) {
			System.out.println("데이터 삭제 실패!");
		} else {
			System.out.println("데이터 삭제 성공!");
		}

		return "redirect:../list";
	}
}
