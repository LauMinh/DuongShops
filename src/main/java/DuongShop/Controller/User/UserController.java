package DuongShop.Controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DuongShop.Entity.Users;
import DuongShop.Service.User.AccountServiceIpml;

@Controller
public class UserController extends BaseController {
	@Autowired
	AccountServiceIpml accountService = new AccountServiceIpml();

	@RequestMapping(value = "dang-ky", method = RequestMethod.GET)
	public ModelAndView Register() {
		_mvShare.setViewName("user/account/register");
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}

	@RequestMapping(value = "dang-ky", method = RequestMethod.POST)
	public ModelAndView CreateAcc(@ModelAttribute("user") Users user) {
		int count = accountService.AddAccount(user);
		if (count > 0) {
			 _mvShare.setViewName("redirect:trang-chu");
		} else {
			_mvShare.addObject("status", "Đăng ký tài khoản thất bại");
		}
		 _mvShare.setViewName("redirect:trang-chu");
		return _mvShare;
	}

	@RequestMapping(value = "dang-nhap", method = RequestMethod.GET)
	public ModelAndView Login() {
		_mvShare.setViewName("user/account/login");
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}

	@RequestMapping(value = "dang-nhap", method = RequestMethod.POST)
	public ModelAndView login(HttpSession session, @ModelAttribute("user") Users user) {
	    user = accountService.CheckAccount(user);
	    if (user != null) {
	        _mvShare.setViewName("redirect:trang-chu");
	        session.setAttribute("LoginInfor", user);
	    } else {
	    	_mvShare.addObject("statusLogin", "Sai mật khẩu");   
	    }
	    return _mvShare;
	}
	
	@RequestMapping(value = "/dang-xuat", method = RequestMethod.GET)
	public String Logout(HttpSession session, HttpServletRequest request) {
	    session.removeAttribute("LoginInfor");
	    return "redirect:"+request.getHeader("Referer");
	    
	}
}