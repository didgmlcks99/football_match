package com.realpro.footballmatch.controller;

import java.text.ParseException;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.realpro.footballmatch.bean.MatchVO;
import com.realpro.footballmatch.dao.MatchDAO;

@Controller
public class MatchController {

	@Autowired
	MatchDAO matchDAO;

	@RequestMapping(value = "/match/list", method = RequestMethod.GET)
	public String matchList(Locale locale, Model model) {
		model.addAttribute("list", matchDAO.getMatchList());
		return "match/list";
	}

	@RequestMapping(value = "/match/add", method = RequestMethod.GET)
	public String addForm() {
		return "match/addform";
	}

	@RequestMapping(value = "/match/addok", method = RequestMethod.POST)
	public String addOK(MatchVO vo) {
		int i = 0;
		
		try {
			i = matchDAO.insertMatch(vo);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (i == 0) {
			System.out.println("데이터 추가 실패!");
		} else {
			System.out.println("데이터 추가 성공!");
		}

		return "redirect:list";
	}

	@RequestMapping(value = "/match/editform/{id}", method = RequestMethod.GET)
	public String editForm(@PathVariable("id") int id, Model model) {
		MatchVO matchVO = matchDAO.getMatch(id);
		model.addAttribute("matchVO", matchVO);
		return "match/editform";
	}

	@RequestMapping(value = "/match/editok", method = RequestMethod.POST)
	public String editOK(MatchVO vo) {
		int i = 0;
		
		try {
			i = matchDAO.updateMatch(vo);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (i == 0) {
			System.out.println("데이터 수정 실패!");
		} else {
			System.out.println("데이터 수정 성공!");
		}

		return "redirect:list";
	}

	@RequestMapping(value = "/match/deleteok/{id}", method = RequestMethod.GET)
	public String deletePost(@PathVariable("id") int id) {
		int i = matchDAO.deleteMatch(id);

		if (i == 0) {
			System.out.println("데이터 삭제 실패!");
		} else {
			System.out.println("데이터 삭제 성공!");
		}

		return "redirect:../list";
	}
}
