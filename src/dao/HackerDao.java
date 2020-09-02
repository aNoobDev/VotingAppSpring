package dao;    
import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import demo2.Hacker;    
    
   
public class HackerDao {    

	JdbcTemplate template;    
    
		public void setTemplate(JdbcTemplate template) 
		{    
		    this.template = template;    
		}    
		public int save(Hacker h)
		{    
			System.out.println(h.getName()+" "+h.getAge()+" "+h.getTown()+" "+h.getVoteCount());
		    String sql="insert into hackers.hackerr_detail(name,age,Town,Vote_Count) values('"+h.getName()+"',"+h.getAge()+",'"+h.getTown()+"',"+h.getVoteCount()+")";    
		    return template.update(sql);    
		}    
		public int update(Hacker h)
		{    
		    String sql="update hackers.hackerr_detail set name='"+h.getName()+"', age="+h.getAge()+",Town='"+h.getTown()+"' where id="+h.getId()+"";    
		    return template.update(sql);    
		}    
		public int delete(int id)
		{    
		    String sql="delete from hackers.hackerr_detail where id="+id+"";    
		    return template.update(sql);    
		}    
		public Hacker getHackerById(int id)
		{    
		    String sql="select * from hackers.hackerr_detail where id=?";    
		    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Hacker>(Hacker.class));    
		}
		
		public Hacker getHackerByDefault()
		{    
		    String sql="select * from hackers.hackerr_detail limit 1";    
		    return template.queryForObject(sql, new Object[] {},new BeanPropertyRowMapper<Hacker>(Hacker.class));    
		}
		
		public void vote(int id)
		{
			String sql="select Vote_Count from hackers.hackerr_detail where id=?";
			int vote_count=(int)template.queryForObject(sql, new Object[] {id},int.class);
			vote_count+=1;
			sql="update hackers.hackerr_detail set Vote_Count="+vote_count+" where id="+id+"";
			template.update(sql);
			
		}
		private int getJdbcTemplate() {
			// TODO Auto-generated method stub
			return 0;
		}
		public List<Hacker> getHackers()
		{    
		    return template.query("select * from hackers.hackerr_detail",new RowMapper<Hacker>(){    
		        public Hacker mapRow(ResultSet rs, int row) throws SQLException {    
		            Hacker h=new Hacker();    
		            h.setId(Integer.parseInt(rs.getString(1)));    
		            h.setName(rs.getString(2));    
		            h.setAge(Integer.parseInt(rs.getString(3)));    
		            h.setTown(rs.getString(4));
		            h.setVoteCount(Integer.parseInt(rs.getString(5)));
		            return h;    
		        }    
		    });    
		}    
}   