package com.realpro.footballmatch.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.realpro.footballmatch.bean.MatchVO;

public class MatchDAO {
	
	private JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	private final String MATCH_INSERT = "insert into football_match (team_one, team_two, league, date) values (?,?,?,?)";
	private final String MATCH_UPDATE = "update football_match set team_one=?, team_two=?, league=?, date=? where seq=?";
	private final String MATCH_DELETE = "delete from football_match  where seq=?";
	private final String MATCH_GET = "select * from football_match  where seq=?";
	private final String MATCH_LIST = "select * from football_match order by seq desc";
	
	public int insertMatch(MatchVO vo) throws ParseException {
		System.out.println("===> JDBC로 insertMatch() 기능 처리");
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date = format.parse(vo.getDate());
		
		return template.update(MATCH_INSERT, new Object[] {vo.getTeam_one(), vo.getTeam_two(), vo.getLeague(), date});
	}
	
	public int deleteMatch(int id) {
		System.out.println("===> JDBC로 deleteMatch() 기능 처리");
		return template.update(MATCH_DELETE, new Object[] {id});
	}

	public int updateMatch(MatchVO vo) throws ParseException {
		System.out.println("===> JDBC로 updateMatch() 기능 처리");
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date = format.parse(vo.getDate());
		
		return template.update(MATCH_UPDATE, new Object[] {vo.getTeam_one(), vo.getTeam_two(), vo.getLeague(), date, vo.getSeq()});
	}

	public MatchVO getMatch(int seq) {
		System.out.println("===> JDBC로 getMatch() 기능 처리");
		return template.queryForObject(MATCH_GET, new Object[] {seq}, new BeanPropertyRowMapper<MatchVO>(MatchVO.class));
	}

	public List<MatchVO> getMatchList() {
		System.out.println("===> JDBC로 getMatchList() 기능 처리");
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		return template.query(MATCH_LIST, new RowMapper<MatchVO>() {
			
			@Override
			public MatchVO mapRow(ResultSet rs, int rowNum) throws SQLException{
				MatchVO data = new MatchVO();
				data.setSeq(rs.getInt("seq"));
				data.setTeam_one(rs.getString("team_one"));
				data.setTeam_two(rs.getString("team_two"));
				data.setLeague(rs.getString("league"));
				data.setDate(format.format(rs.getDate("date")));
				return data;
			}
		});
	}
}
