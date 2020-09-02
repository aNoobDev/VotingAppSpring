package demo2;

import java.net.http.HttpRequest;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.HackerDao;

@Controller
public class AdminController {

	@Autowired
	HackerDao dao;
	
	@RequestMapping("/showLogInForm")
	public String showForm(Model theModel)
	{
		theModel.addAttribute("admin",new Admin());
		return "LogIn";
	}
	@RequestMapping(value="/processLogInForm",method=RequestMethod.POST)
	public String Login(@ModelAttribute("admin")Admin theadmin,Model model,HttpServletRequest request)
	{
		String name=theadmin.getUsername();
		String pass=theadmin.getPassword();
		
		if(name.equals("123456")&&pass.equals("123456"))
		{
			HttpSession session =request.getSession();
			session.setAttribute("Username",name);
			return  "welcome";
		}
		else
		{
			String authmsg="Wrong Credentials";
			model.addAttribute("authmsg",authmsg);
			return "LogIn";
			
		}
	}
	@RequestMapping("/add")
	public String addHacker()
	{
		return "addHacker";
	}
	
	@RequestMapping("/addHacker")
	public String add(@ModelAttribute("hacker")Hacker thehacker,Model model)
	{
		dao.save(thehacker);
		List<Hacker> list=dao.getHackers();    
        model.addAttribute("list",list);
		String msg="New Candidate Added Successfully";
		model.addAttribute("msg",msg);
		
		return "editHackerHome";
	}
	@RequestMapping("/editDelete")
	public String editDeleteHacker(Model model)
	{
		List<Hacker> list=dao.getHackers();    
        model.addAttribute("list",list);
        
		return "editHackerHome";
	}
	@RequestMapping(value="/editHacker",method=RequestMethod.POST)
	public String editHacker(@RequestParam("button")String id,Model m)
	{
		
		Hacker h=dao.getHackerById(Integer.parseInt(id));
		
		m.addAttribute("h",h);
		return "editHacker";
	}
	@RequestMapping(value="/updateHacker",method=RequestMethod.POST)
	public String updateHacker(@RequestParam("button")String id,@ModelAttribute("hacker")Hacker theHacker,Model model)
	{
		theHacker.setId(Integer.parseInt(id));
		dao.update(theHacker);
		
		List<Hacker> list=dao.getHackers();    
        model.addAttribute("list",list);
        String msg="Updated Successfully";
		model.addAttribute("msg",msg);
		return "editHackerHome";
	}
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	public String deleteHacker(@RequestParam("button")String id,Model model,HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		if(session.getAttribute("Username")!=null)
		{
			dao.delete(Integer.parseInt(id));
			
			List<Hacker> list=dao.getHackers();    
	        model.addAttribute("list",list);
	        String msg="Deleted Successfully";
			model.addAttribute("msg",msg);
			return "editHackerHome";
		}
		else
			return "LogIn";
	}
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		session.removeAttribute("Username");
		session.invalidate();
		return "LogIn";
	}
	
	
	
}
