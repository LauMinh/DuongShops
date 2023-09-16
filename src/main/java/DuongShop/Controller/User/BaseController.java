package DuongShop.Controller.User;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import DuongShop.Service.User.HomeServiceImpl;
@Controller
public class BaseController {
	@Autowired
	HomeServiceImpl _homeServiceImpl;
	public ModelAndView _mvShare = new ModelAndView();
	@PostConstruct
	public ModelAndView Init() {
		_mvShare.addObject("menus", _homeServiceImpl.GetDataMenus());
		return _mvShare;
	}
}
