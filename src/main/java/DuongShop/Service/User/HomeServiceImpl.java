package DuongShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DuongShop.Dao.CategorysDao;
import DuongShop.Dao.MenuDao;
import DuongShop.Dao.ProductsDao;
import DuongShop.Dao.SlidesDao;
import DuongShop.Dto.ProductsDto;
import DuongShop.Entity.Categorys;
import DuongShop.Entity.Menus;
import DuongShop.Entity.Slides;

@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private SlidesDao slidesdao;
	@Autowired
	private CategorysDao categorysDao;
	@Autowired
	private MenuDao menuDao;
	@Autowired
	private ProductsDao productsDao;


	public List<Slides> GetDataSlides() {
		return slidesdao.GetDataSlides();
	}

	public List<Categorys> GetDataCategorys() {
		return categorysDao.GetDataCategorys();
	}
	public List<Menus> GetDataMenus(){
		return menuDao.GetDataMenus();
	}

	public List<ProductsDto> GetDataProductsDto() {
		List<ProductsDto> listProduct =  productsDao.GetDataProductsDto();
		return listProduct;
	}
	
}
