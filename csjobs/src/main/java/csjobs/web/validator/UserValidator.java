package csjobs.web.validator;



import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import csjobs.model.Application;
import csjobs.model.Degree;
import csjobs.model.Job;
import csjobs.model.User;
import csjobs.model.dao.JobDao;
import csjobs.model.dao.UserDao;



@Component
public class UserValidator implements Validator{

	 @Autowired
	 private JobDao jobdao;
	 
	 @Autowired
	 private UserDao userdao;
	 
	
	    
	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.isAssignableFrom(clazz);
	}
	
	public boolean supports0(Class<?> clazz1) {
		return Degree.class.isAssignableFrom(clazz1);
	}

	public boolean supports00(Class<?> clazz) {
		return Degree.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) 
	{
		
		
		User user= (User) target;
		
		if(!StringUtils.hasText(user.getFirstName()))
			errors.rejectValue("firstName", "errors.field.empty");
		
		if(!StringUtils.hasText(user.getLastName()))
			errors.rejectValue("lastName", "errors.field.empty");
		
		if(!StringUtils.hasText(user.getEmail()))
			errors.rejectValue("email", "errors.field.empty");
		
		
    	List<User> us =userdao.getUsers();
    	String st = user.getEmail();
		for(int i=0; i<us.size(); i++)
		{
		if(st.equals(us.get(i).getEmail()))
			errors.rejectValue("email", "errors.invalid.email");
		
		}
		if(!StringUtils.hasText(user.getPassword()))			
			errors.rejectValue("password", "errors.field.empty");
		
		if(!StringUtils.hasText(user.getPassword2()))			
			errors.rejectValue("password2", "errors.field.empty");
		
		if(!user.getPassword2().equals(user.getPassword()))			
			errors.rejectValue("password2", "errors.wrong.password");

		if(!StringUtils.hasText(user.getAddress()))
			errors.rejectValue("address", "errors.field.empty");
		
		if(!StringUtils.hasText(user.getPhone()))
			errors.rejectValue("phone", "errors.field.empty");
	}
	
	
	public void validate1(Object target, Errors errors) 
	{
		User user1= (User) target;

		List<User> users = userdao.getUsers();
		
		String username = user1.getEmail();
		String password = user1.getPassword();
		
		int flag=0;
		for(int i=0; i<users.size(); i++)
		{
			if(users.get(i).getEmail().equalsIgnoreCase(username) && users.get(i).getPassword().equals(password))
			{
				flag=1;
				break;
					
			}
		}
		
		if(flag==0)
			errors.rejectValue("email","errors.invalid.user_pass");

		
	}
	
	
	public void validate0(Object target, Errors errors) 
	{
		
			
			Degree rt= (Degree) target;
			
			if(!StringUtils.hasText(rt.getName()))
				errors.rejectValue("name", "errors.field.empty");
			
			if(!StringUtils.hasText(rt.getSchool()))
				errors.rejectValue("school", "errors.field.empty");
			
			if(StringUtils.isEmpty(rt.getYear()))
				errors.rejectValue("year", "errors.field.empty");
	}
	
	public void validate00(Object target, Errors errors) 
	{
		
			
			Application applicantadd= (Application) target;
			
			if(!StringUtils.hasText(applicantadd.getCurrentJobTitle()))
				errors.rejectValue("currentJobTitle", "errors.field.empty");
			
			if(!StringUtils.hasText(applicantadd.getCurrentJobInstitution()))
				errors.rejectValue("currentJobInstitution", "errors.field.empty");
			
			if(StringUtils.isEmpty(applicantadd.getCurrentJobYear()))
				errors.rejectValue("currentJobYear", "errors.field.empty");
	}
}


// || jp.getPublishDate().equals(null) && !jp.getCloseDate().equals(null)