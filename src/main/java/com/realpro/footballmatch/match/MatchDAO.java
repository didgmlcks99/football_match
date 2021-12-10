package com.realpro.footballmatch.match;

import java.text.ParseException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

// bean으로 등록하기 위해서
@Repository
public class MatchDAO {
	
//	private JdbcTemplate template;
	
//	public void setTemplate(JdbcTemplate template) {
//		this.template = template;
//	}
	
//	private final String MATCH_INSERT = "insert into football_match (team_one, team_two, league, date, time) values (?,?,?,?,?)";
//	private final String MATCH_UPDATE = "update football_match set team_one=?, team_one_score=?, team_two_score=?, team_two=?, league=?, date=?, time=? where seq=?";
//	private final String MATCH_DELETE = "delete from football_match where seq=?";
//	private final String MATCH_GET = "select * from football_match where seq=?";
//	private final String MATCH_LIST = "select * from football_match order by date desc";
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertMatch(MatchVO vo) throws ParseException {
		System.out.println("===> JDBC로 insertMatch() 기능 처리");
		
		int result = sqlSession.insert("Match.insertMatch", vo);
		return result;
	}
	
	public int updateMatch(MatchVO vo) throws ParseException {
		System.out.println("===> JDBC로 updateMatch() 기능 처리");
		
		int result = sqlSession.update("Match.updateMatch", vo);
		return result;
	}
	
	public int deleteMatch(int seq) {
		System.out.println("===> JDBC로 deleteMatch() 기능 처리");
		int result = sqlSession.delete("Match.deleteMatch", seq);
		return result;
	}

	public MatchVO getMatch(int seq) {
		System.out.println("===> JDBC로 getMatch() 기능 처리");
		
		MatchVO one = sqlSession.selectOne("Match.getMatch", seq);
		return one;
	}

	public List<MatchVO> getMatchList() {
		System.out.println("===> JDBC로 getMatchList() 기능 처리");
		
		List<MatchVO> list = sqlSession.selectList("Match.getMatchList");
		return list;
		
//		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//		
//		return template.query(MATCH_LIST, new RowMapper<MatchVO>() {
//			
//			@Override
//			public MatchVO mapRow(ResultSet rs, int rowNum) throws SQLException{
//				MatchVO data = new MatchVO();
//				data.setSeq(rs.getInt("seq"));
//				data.setTeam_one(rs.getString("team_one"));
//				data.setTeam_one_score(rs.getString("team_one_score"));
//				data.setTeam_two_score(rs.getString("team_two_score"));
//				data.setTeam_two(rs.getString("team_two"));
//				data.setLeague(rs.getString("league"));
//				data.setDate(format.format(rs.getDate("date")));
//				data.setTime(rs.getString("time"));
//				return data;
//			}
//		});
	}
}
