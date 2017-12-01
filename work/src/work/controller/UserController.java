package work.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mysql.fabric.Response;

import work.entity.Product;
import work.entity.User;
import work.service.UserServiceImpl;

@Controller
@RequestMapping("/register")
public class UserController {
	@Resource
	private UserServiceImpl userService;
	
	@RequestMapping(value="/add")
	public String regist(HttpSession session,User u){
		User u1 = this.userService.addUser(u);
		if(u1 != null){
			session.setAttribute("user", u1);
			return "index";
		}else{
			return "regist";
		}
	}
	@RequestMapping(value="/checkUser",method=RequestMethod.POST)
	 public void checkUser(HttpServletRequest request, HttpServletResponse response, HttpSession session)
	            throws ServletException, IOException {
		 		//System.out.println("tyuio");
		        PrintWriter out = response.getWriter();
		        String loginName = request.getParameter("loginName");
		        if (loginName.equals("")) {
		            out.print(2);// 2是不能为空
		        } else {
		            User user = userService.findName(loginName);
		            if (user != null) {
		                out.print(1);// 1用户名已存在
		                //System.out.println("tyuio");
		                //System.out.println(user.getLoginName());
		            }else
		            	out.print(3);//该用户名可以使用

		        }
		    }
	@RequestMapping(value="/login")
	public String login(@RequestParam("loginName") String loginName, @RequestParam("password") String password,
		      Model model,User u) {
		 
		    if (loginName.equals(u.getLoginName()) && password.equals(u.getPassword())) {
		      model.addAttribute("loginName", loginName);
		      return "index";
		    } else {
		      model.addAttribute("loginName", loginName);
		      return "login";
		    }
		  }
	}

	
	
			


