package com.ltts.project.Controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import com.ltts.project.Dao.EmployeeDao;
import com.ltts.project.model.Employee;

@RestController
public class SpringController {
	
	@Autowired
	EmployeeDao ed;
	
	@RequestMapping("/hi")
	public String firstMethod() {
		return "Hello SpringBoot";
	}
	
	@RequestMapping(" ")
	public ModelAndView secondMethod() {
		return new ModelAndView("index");
	}
	@RequestMapping("/registration")
	public ModelAndView registerUser() {
		return new ModelAndView("registration");
	}
	@RequestMapping("/login")
	public ModelAndView loginPage() {
		return new ModelAndView("login");
	}
	@RequestMapping(value="adduser", method=RequestMethod.POST)
	public ModelAndView addUser(HttpServletRequest req, Model model) {
		ModelAndView mv=null;
		String email=req.getParameter("email");
		String mobile=req.getParameter("mobile");
		String password=req.getParameter("password");
		String employeeid=req.getParameter("employeeid");
		String department=req.getParameter("department");
		String designation=req.getParameter("designation");
		String employeename=req.getParameter("employeename");
		String immediatesupervisor=req.getParameter("immediatesupervisor");
	//	ApplicationContext ac=new ClassPathXmlApplicationContext();
		Employee e=new Employee(email,mobile,password,employeeid,
				department, designation, employeename, immediatesupervisor);
		//System.out.println("***** INSIDE CONTROLLER ****"+e);
		boolean b=ed.InsertEmployee(e);
		if(b==false) {
			mv=new ModelAndView("success");
			model.addAttribute("msg", "Successfully Inserted.. ");
		}
		else {
			mv=new ModelAndView("error");
			model.addAttribute("msg", "Error due to Connection");
			
		}
		/*
		 * try { b=md.InsertMember(m); mv=new ModelAndView("success"); } catch(Exception
		 * e) {
		 * 
		 * mv=new ModelAndView("error"); }
		 */
		
		
		return mv;
	}
	@RequestMapping(value="checkuser", method=RequestMethod.POST)
	public ModelAndView checkUser(HttpServletRequest req, Model model) {
		ModelAndView mv=null;
		String employeeid=req.getParameter("employeeid");
		String password=req.getParameter("password");
		
		Employee e=ed.getEmployeeById(employeeid);
		System.out.println(e);
		if(e !=null) {
		
			if(password.equals(e.getPassword())) {
				model.addAttribute("value", e.getEmployeename());
				mv=new ModelAndView("welcome");
			}
			else {
				model.addAttribute("msg", "Password Wrong");
				mv=new ModelAndView("login");
			}
		}
		else {
			model.addAttribute("msg", "User Not Found Please Register");
			mv=new ModelAndView("login");
		}
		return mv;
	}
	

}
