package com.realpro.footballmatch.match;

import java.util.List;

public interface MatchService {
	public int insertMatch(MatchVO vo);
	public int updateMatch(MatchVO vo);
	public int deleteMatch(int seq);
	public MatchVO getMatch(int seq);
	public List<MatchVO> getMatchList();
}
