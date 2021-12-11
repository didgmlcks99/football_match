package com.realpro.footballmatch.match;

import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MatchServiceImpl implements MatchService {

	@Autowired
	MatchDAO matchDAO;

	@Override
	public int insertMatch(MatchVO vo) {
		try {
			return matchDAO.insertMatch(vo);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int updateMatch(MatchVO vo) {
		try {
			return matchDAO.updateMatch(vo);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int deleteMatch(int seq) {
		return matchDAO.deleteMatch(seq);
	}

	@Override
	public MatchVO getMatch(int seq) {
		return matchDAO.getMatch(seq);
	}

	@Override
	public List<MatchVO> getMatchList() {
		return matchDAO.getMatchList();
	}

}
