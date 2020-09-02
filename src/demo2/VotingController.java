package demo2;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.HackerDao;


@Controller
public class VotingController {
	
	@Autowired
	HackerDao dao;
	
	@RequestMapping(value="/processVoting",method=RequestMethod.POST)
	public String voting(HttpServletRequest request,HttpServletResponse response,Model m)
	{
		Cookie[] cookie=null;
		cookie=request.getCookies();
		String userId = null;
		for(Cookie c : cookie)
		{
		    if("25".equals(c.getName()))
		    {
		        userId = c.getValue();
		    }
		}
		
		if(userId!=null)
		{
			m.addAttribute("msg", "You have already Voted");
			
		}
		else
		{
			String id=request.getParameter("VotingName");
			dao.vote(Integer.parseInt(id));
			Cookie c=new Cookie("25","aafat");
			response.addCookie(c);
			m.addAttribute("msg", "Thank you, Your vote is registered successfully");
		}
		List<Hacker> list=dao.getHackers();    
        m.addAttribute("list",list);
		return "votingCount";
	}

}
