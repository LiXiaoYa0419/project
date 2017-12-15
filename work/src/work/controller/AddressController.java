package work.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import work.entity.Address;
import work.entity.User;
import work.service.AddressService;

@Controller
@RequestMapping("/as")
public class AddressController {
	@Resource
	private AddressService as;
	
	@RequestMapping(value="/add")
	public String address(HttpSession session,Address a){
		Address  a1= this.as.save(a);
		if(a1 != null && a1.getName().equals(a.getName()) && a1.getAddress().equals(a.getAddress()) && a1.getPhone().equals(a.getPhone())){
			session.setAttribute("ass", a1);
			return "orderItems";
		}else{
		return "Address";
	}
	}
	
	
}
