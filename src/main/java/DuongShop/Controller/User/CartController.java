package DuongShop.Controller.User;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DuongShop.Dto.CartDto;
import DuongShop.Entity.Bills;
import DuongShop.Entity.Users;
import DuongShop.Service.User.BillsServiceIpml;
import DuongShop.Service.User.CartServiceImpl;

@Controller
public class CartController extends BaseController{
	
	@Autowired
	private CartServiceImpl cartService = new CartServiceImpl();
	@Autowired
	private BillsServiceIpml billsService = new BillsServiceIpml();
	
	@RequestMapping(value = "/gio-hang")
    public ModelAndView Index() {
		_mvShare.setViewName("user/cart/list_cart");
		return _mvShare;
	}
	@RequestMapping(value = "AddCart/{id}")
	public String AddCart(HttpServletRequest request ,HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartService.AddCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart",cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		


		return "redirect:"+ request.getHeader("Referer");
		
	}
	
	@RequestMapping(value = "gio-hang/EditCart/{id}/{quanty}")
	public String EditCart(HttpServletRequest request ,HttpSession session, @PathVariable long id, @PathVariable int quanty) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		  cart = cartService.EditCart(id, quanty, cart);
		  session.setAttribute("Cart", cart); 
		  session.setAttribute("TotalQuantyCart",cartService.TotalQuanty(cart));
		  session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		  return "redirect:"+ request.getHeader("Referer");
	}
	
	@RequestMapping(value = "DeleteCart/{id}")
	public String DeletetCart(HttpServletRequest request ,HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartService.DeleteCart(id, cart); 
		session.setAttribute("Cart", cart); 
		session.setAttribute("TotalQuantyCart",cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:"+ request.getHeader("Referer");
	}
	

	@RequestMapping(value = "dat-hang", method = RequestMethod.GET)
	public ModelAndView CheckOut(HttpServletRequest request ,HttpSession session) {
		_mvShare.setViewName("user/bills/checkout");
		Bills bills = new Bills();
		Users loginInfo = (Users) session.getAttribute("LoginInfor");
		if(loginInfo != null) {
			bills.setAddress(loginInfo.getAddress());
			bills.setDisplay_name(loginInfo.getDisplay_name());
			bills.setEmail(loginInfo.getEmail());
		}
		_mvShare.addObject("bills", bills);
		return _mvShare;
	}
	
	@RequestMapping(value = "dat-hang", method = RequestMethod.POST)
	public String CheckOutBill(HttpServletRequest request ,HttpSession session, @ModelAttribute("bills") Bills bill) {
		
		if(billsService.AddBills(bill) > 0) {
			HashMap<Long, CartDto> carts = (HashMap<Long, CartDto>)session.getAttribute("Cart");
			billsService.AddBillDetail(carts);
		}
		session.removeAttribute("Cart");
		return "redirect:/order_success";
	}

}
