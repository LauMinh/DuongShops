package DuongShop.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OrderSuccessController extends BaseController {

    @RequestMapping(value="/order_success", method = RequestMethod.GET)
    public String showOrderSuccessPage() {
    	return "user/cart/order_success";
    }
}