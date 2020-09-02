package demo2;

import java.net.http.HttpRequest;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.HackerDao;

@Controller()
public class HomePageController {
	
	//will inject DAO from XML file  
	@Autowired
	HackerDao dao;  
	
	@RequestMapping("/")
	public String showPage()
	{
		
		
		return "HomePage";
	}
	
	@RequestMapping("/processVotingPage")
	public String processPage(Model m)
	{
		List<Hacker> list=dao.getHackers();    
        m.addAttribute("list",list);
        
        Hacker h=dao.getHackerByDefault();
        m.addAttribute("h",h);
        m.addAttribute("msg", "Please vote wisely");
		return "Voting";
	}
	@RequestMapping(value = "/detail",method=RequestMethod.POST)
    public String Controller(@RequestParam("HackerName")String id,Model m) 
	{
		
		
		Hacker h=dao.getHackerById(Integer.parseInt(id));
		m.addAttribute("h",h);
		
		List<Hacker> list=dao.getHackers();    
        m.addAttribute("list",list);
		
		return "Voting";
	
    }
	
	@RequestMapping(value="/userAuth",method=RequestMethod.POST)
	public String userAuthentication(@RequestParam("user")String id,Model m)
	{
		m.addAttribute("id", id);
	
		return "userAuth";
	}
	
	@RequestMapping(value="/authenticate",method=RequestMethod.POST)
	public String authentication(@ModelAttribute("hacker")Hacker hacker,@RequestParam("uid")String id,Model m)
	{
		
		
		int idEntered=hacker.getId();
		int idOriginal=Integer.parseInt(id);
		if(idOriginal==idEntered)
		{
			
			Hacker h=dao.getHackerById(idOriginal);
			m.addAttribute("h",h);
			return "editHacker2";
		}
		else
		{
			m.addAttribute("msg", "Wrong Details");
			m.addAttribute("id",id);
			return "userAuth";
		}
		
	}
	@RequestMapping(value="/updateHacker2",method=RequestMethod.POST)
	public String updateHacker2(@RequestParam("button")String id,@ModelAttribute("hacker")Hacker theHacker,Model model)
	{
		theHacker.setId(Integer.parseInt(id));
		dao.update(theHacker);
		
		List<Hacker> list=dao.getHackers();    
        model.addAttribute("list",list);
        String msg="Updated Successfully";
		model.addAttribute("msg",msg);
		return "editHackerHome2";
	}
	
	


}
