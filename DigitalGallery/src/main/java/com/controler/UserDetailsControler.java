package com.controler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.UserdetailsDao;
import com.model.UserCredentials;
import com.model.UserDetails;

@Controller
public class UserDetailsControler {
	
	@Autowired
	UserdetailsDao userdao;
	public UserDetailsControler()
	{}


	@RequestMapping(value ="/usershow",method=RequestMethod.GET)
	public ModelAndView showUserdetails() 
	{	
		
		ModelAndView mvc=new ModelAndView("UserDetailsView","userdetails",new UserDetails());
		return mvc;
	}

	@RequestMapping(value="/InsertcUser", method=RequestMethod.POST)
	public ModelAndView addUser(UserDetails userdetails) 
	{
		UserCredentials userCreden= new UserCredentials();
		ModelAndView m1=new ModelAndView("UserDetailsView","userdetails",new UserDetails());
		userCreden.setEnabled(true);
		userCreden.setPassword(userdetails.getPassword());
		
		//userCreden.setRole("ROLE_ADMIN");
		userCreden.setRole("ROLE_USER");
		userCreden.setUsername(userdetails.getUsername());
		userdao.insert(userdetails);
		userdao.insertcreden(userCreden);
		//boolean data=false;
	    //String categeries=cdao.Retrive();
        //m1.addObject("checkk",data);
        //m1.addObject("mylist",categeries);
		return m1;
	}
	
	@RequestMapping(value ="/usershow1",method=RequestMethod.GET)
	public ModelAndView showUserdetails1() 
	{	
		
		ModelAndView mvc=new ModelAndView("signup","userdetails",new UserDetails());
		return mvc;
	}

	
	@RequestMapping(value="/InsertcUser1", method=RequestMethod.POST)
	public ModelAndView addUser1(UserDetails userdetails) 
	{
		UserCredentials userCreden= new UserCredentials();
		ModelAndView m1=new ModelAndView("signup","userdetails",new UserDetails());
		userCreden.setEnabled(true);
		userCreden.setPassword(userdetails.getPassword());
		
		//userCreden.setRole("ROLE_ADMIN");
		userCreden.setRole("ROLE_USER");
		userCreden.setUsername(userdetails.getUsername());
		userdao.insert(userdetails);
		userdao.insertcreden(userCreden);
		//boolean data=false;
	    //String categeries=cdao.Retrive();
        //m1.addObject("checkk",data);
        //m1.addObject("mylist",categeries);
		return m1;
	}
}
