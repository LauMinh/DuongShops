package DuongShop.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import DuongShop.Dto.PaginatesDto;
import DuongShop.Service.User.CategoryServiceImpl;
import DuongShop.Service.User.PaginatesServiceImpl;

@Controller
public class CategoryController extends BaseController{
	@Autowired
	private CategoryServiceImpl categoryService;
	@Autowired
	private PaginatesServiceImpl paginatesService;
	
	int totalProductPage = 9;
	@RequestMapping(value = {"/san-pham/{id}"})
	public ModelAndView Product(@PathVariable String id) {
		
		_mvShare.setViewName("user/products/category");		
		int totalData = categoryService.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfor = paginatesService.GetinfoPaginates(totalData, totalProductPage, 1);
		_mvShare.addObject("idCategory", id );
		_mvShare.addObject("paginateInfor", paginateInfor );
		_mvShare.addObject("productPaginate", categoryService.GetDataProductsPaginate(Integer.parseInt(id), paginateInfor.getStart(), totalProductPage));
		
		return _mvShare;
	}
	
	@RequestMapping(value = {"/san-pham/{id}/{currentPage}"})
	public ModelAndView Product(@PathVariable String id, @PathVariable String currentPage) {
		_mvShare.setViewName("user/products/category");		
		int totalData = categoryService.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfor = paginatesService.GetinfoPaginates(totalData, totalProductPage, Integer.parseInt(currentPage));
		_mvShare.addObject("idCategory", id );
		_mvShare.addObject("paginateInfor", paginateInfor );
		_mvShare.addObject("productPaginate", categoryService.GetDataProductsPaginate(Integer.parseInt(id), paginateInfor.getStart(), totalProductPage));
		
		return _mvShare;
	}


}
