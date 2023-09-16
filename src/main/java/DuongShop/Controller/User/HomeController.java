package DuongShop.Controller.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import DuongShop.Service.User.HomeServiceImpl;

@Controller
public class HomeController extends BaseController {
	
	@RequestMapping(value = { "/", "/trang-chu" })
	public ModelAndView Index() {
		
		_mvShare.addObject("slides", _homeServiceImpl.GetDataSlides());
		_mvShare.addObject("categorys", _homeServiceImpl.GetDataCategorys());
		_mvShare.addObject("products", _homeServiceImpl. GetDataProductsDto());
		_mvShare.setViewName("user/index");
		return _mvShare;
	}

	
}
