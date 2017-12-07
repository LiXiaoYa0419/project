package work.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

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

import work.entity.Order;
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
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(HttpSession session,HttpServletRequest request,User u) {
		User u1 = this.userService.findName(u.getLoginName());
		//System.out.println("nsx");
		if(u1 != null){
			if(u1.getPassword() .equals(u.getPassword())){
				session.setAttribute("user", u1);
				return "index";
			}else{
				request.setAttribute("errorinfo2", "密码填写错误");
				return "login";
			}
		}else{
			request.setAttribute("errorinfo1", "用户名填写错误");
			return "login";
		}
	
	}
	
	@RequestMapping(value="/addorder")
	public String addOrderUser(HttpSession session,Order o){
		Order order = this.userService.addOrderUser(o);
		if(order != null){
			session.setAttribute("order", order);
			return "order";
		}else{
			return "order";
		}
	}
}

	
	
			


