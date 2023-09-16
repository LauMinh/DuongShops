package DuongShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DuongShop.Dto.ProductsDto;
import DuongShop.Entity.Categorys;
import DuongShop.Entity.Menus;
import DuongShop.Entity.Slides;
@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlides();	
	public List<Categorys> GetDataCategorys();
	public List<Menus> GetDataMenus(); 
	public List<ProductsDto> GetDataProductsDto(); 
}
