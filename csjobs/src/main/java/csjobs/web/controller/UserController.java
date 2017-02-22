package csjobs.web.controller;
import org.hibernate.Session;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.persistence.Access;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;




import org.springframework.validation.BindingResultUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;






import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import csjobs.model.Application;
import csjobs.model.Degree;
import csjobs.model.Job;
import csjobs.model.User;
import csjobs.model.dao.ApplicationDao;
import csjobs.model.dao.DegreeDao;
import csjobs.model.dao.JobDao;
import csjobs.model.dao.UserDao;
import csjobs.web.validator.UserValidator;

@Controller

public class UserController {

    @Autowired
    private JobDao jp;
    
    @Autowired
    private UserDao userdao;
    
    @Autowired
    private ApplicationDao appdao;
    
    @Autowired
    private DegreeDao dgdao;
    
    @Autowired
    private UserValidator uservalidator;
    
    
    @RequestMapping("/home.html")
    public String jobTitle(ModelMap models,HttpServletRequest request)
    {
    
    	Date par =new Date();
		SimpleDateFormat ops = new SimpleDateFormat("yyyy-MM-dd");
		String date=ops.format(par);
		
		
		List<Job> list = new ArrayList<Job>();
		
    	List<Job> job =jp.getJobTitle();
    	for(int k=0;k<job.size();k++)
    	{
    		if(job.get(k).getPublishDate()!=null)
    		{
    		if(job.get(k).getCloseDate()==null ||job.get(k).getCloseDate().compareTo(par)>0 )
    	
    		{
    			list.add(job.get(k));   		 
    		}
    		}
    		
		}   	
    	models.put( "list", list);
    	HttpSession session = request.getSession();
		session.setAttribute("list", list);

    	return "home";   	
    
    }
    
    
    @RequestMapping("/jobDetails.html")
    public String viewJobDetail(@RequestParam Integer id,ModelMap models)
    {
    	models.put("jb", jp.getDetails(id));
    	return "jobDetails";
    }
    
    @RequestMapping(value="register.html",method = RequestMethod.GET)
    public String register(ModelMap models)
    {
    	models.put("user", new User());
    	return "register";
    }
    
    @RequestMapping(value="register.html",method = RequestMethod.POST)
    public String register(@ModelAttribute User users,BindingResult result )
    {
    	uservalidator.validate(users, result);
    	if(result.hasErrors())
    		return "register";
    	    users= userdao.saveUser(users);
    	    return "redirect:/home.html";
    	    
    }
    @RequestMapping(value="login.html",method = RequestMethod.GET)
    public String login(ModelMap models)
    {
    	models.put("user", new User());
    	return "login";
    }
    
    @RequestMapping(value="login.html",method = RequestMethod.POST)
    public String login(@ModelAttribute User user,BindingResult result,ModelMap models,HttpServletRequest request )
    {
    	

    	uservalidator.validate1(user, result);
    	
    	if(result.hasErrors())
    	return "login";
    	
    	
    	else
    	{
    		List<User> role= userdao.getUsers();
    		
    		for(int k=0;k<role.size();k++)
    			{
    			
    			if(user.getEmail().equalsIgnoreCase(role.get(k).getEmail()))
    			{
    			    		
    			    
    					
    				if(role.get(k).getRoles().contains("ROLE_ADMIN"))
    				
    					return "admin";
    				
    				if(role.get(k).getRoles().contains("ROLE_REVIEWER"))

    				
    				
    					return "reviewer";
    				
    				else{
    					
    				
    				HttpSession session = request.getSession();
    				session.setAttribute("user12", role.get(k).getEmail());
    				
    				return "redirect:/cs_account.html";
    				}
    			
    		
    }	
    			}}
    	return "redirect:/cs_account.html";
    	}
    		
    	
    //	return null;
    		
    @RequestMapping("cs_account.html")
    public String applicant(ModelMap models,HttpServletRequest request)
    {
    	HttpSession session = request.getSession();  
    	String oo=(String) session.getAttribute("user12");
		
		
		List<User> users = userdao.getUsers();
		List<Job> rr = new ArrayList<Job>();

		for(int i=0; i<users.size(); i++)
		{
			if(users.get(i).getEmail().equalsIgnoreCase(oo))
			{    											
					long omg = users.get(i).getId();
					session.setAttribute("omg", omg);
					
					List<Application> app3 =appdao.getApp(); 

					for(int o=0;o<app3.size();o++)
					{    												
						if(app3.get(o).getApplicant().getId().equals(omg))
						{
								rr.add(app3.get(o).getJob());
						}
					} 
					
					models.put("job2", rr);
			}

		}
		
		
		

		
HttpSession ses = request.getSession();
List<Job> pg=(List<Job>) ses.getAttribute("list");
List<Job> kl =new ArrayList<Job>();	
kl.addAll(pg);


for(int m=0;m<rr.size();m++)
{
for(int t=0;t<kl.size();t++)
{
if(kl.get(t).getTitle().equals(rr.get(m).getTitle()))
		{
			kl.remove(t);
		}
}
}

models.put( "job1", kl);	
return "cs_account";
	
    
    }    
    
    @RequestMapping("logout.html")
    public String logout(HttpSession session, SessionStatus status)
    {
    //	status.setComplete();
    //	session.removeAttribute("user");
    	return "redirect:/home.html";
    }
  
    @RequestMapping(value="apply.html",method = RequestMethod.GET)
    public String apply(ModelMap models,HttpServletRequest request)
    {
    	Application a = new Application();
   
    	models.put("applicantadd", a);
    	System.out.println(a.getId());
    	return "apply";
    }
    
    @RequestMapping(value="apply.html",method = RequestMethod.POST)
    public String apply(@ModelAttribute("applicantadd") Application applicantadd,HttpServletRequest request,BindingResult result,ModelMap model)
    {
    	uservalidator.validate00(applicantadd, result);
 
    	if(result.hasErrors())
    		return "apply";
    	
    	System.out.println(applicantadd.getId());
    	HttpSession ses = request.getSession();
		long find=(long) ses.getAttribute("omg");
		
		HttpSession ses1 = request.getSession();
		Job find1=(Job)ses1.getAttribute("p");
		
		HttpSession ses2 = request.getSession();
		List<Degree> degree= (List<Degree>) ses2.getAttribute("dd");

    	Date par =new Date();
		SimpleDateFormat ops = new SimpleDateFormat("yyyy-MM-dd");
		String date=ops.format(par);
		
		applicantadd.setSubmitDate(par);
		applicantadd.setJob( find1);		
		applicantadd.setApplicant((userdao.getUsers(find)));
		applicantadd.setDegrees(degree);
		System.out.println(applicantadd.getId());
		appdao.saveApp(applicantadd);
		
    	    return "redirect:/cs_account.html";
    	    
    }
    
    @RequestMapping(value="degree.html",method = RequestMethod.GET)
    public String degree(ModelMap models,HttpServletRequest request,@RequestParam Integer iu)
    {
     	HttpSession ses1 = request.getSession();
    	ses1.setAttribute("p",jp.getDetails(iu));
    	List<Degree> dd = new ArrayList<Degree>();
    	HttpSession ses = request.getSession();
		ses.setAttribute("dd",dd);

    	
		    	models.put("rt", new Degree());
		    	
    	return "degree";
    }
    
    @RequestMapping(value="degree.html",method = RequestMethod.POST)
    public String degree(@ModelAttribute("rt") Degree rt,HttpServletRequest request,ModelMap models,BindingResult result )
    {
    	uservalidator.validate0(rt, result);
    	if(result.hasErrors())
    		return "degree";

  
    	HttpSession ses = request.getSession();
    	    	List<Degree> dd = (List<Degree>) ses.getAttribute("dd");
    	      	dd.add(rt);
    	      	ses.setAttribute("dd",dd);
    	      	models.put("rt", new Degree());
    	      	models.put("degr", dd);
    	      	System.out.println(dd.size());
    	return "degree";
    	    
    }
    
    
    @RequestMapping("/applicant_details.html")
    public String viewApplicantDetail(@RequestParam Integer id,ModelMap models,HttpServletRequest request)
    {
    	Job p= jp.getDetails(id);
    	
		HttpSession ses = request.getSession();
		long find=(long) ses.getAttribute("omg");
		
		List<Application> sg = userdao.getUsers(find).getApplications();
		Application sg1 = appdao.getAppl(userdao.getUsers(find).getId(), p.getId());
		
		models.put("usr",userdao.getUsers(find));
		models.put("jb",sg1);
		models.put("d0g",sg1.getDegrees());
		

    	 
    		
    	return "applicant_details";
    }
}

