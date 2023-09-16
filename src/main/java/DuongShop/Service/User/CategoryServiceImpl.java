package DuongShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DuongShop.Dao.ProductsDao;
import DuongShop.Dto.ProductsDto;
@Service
public class CategoryServiceImpl implements ICategoryService {
    @Autowired
	private ProductsDao productsDao;
	
    
    public List<ProductsDto> GetAllProductsByID(int id) {
    	List<ProductsDto> product = productsDao.GetAllProductsDtoByID(id);
    	return product;
 }
	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage) {
		List<ProductsDto> product = productsDao.GetDataProductsPaginate(id, start, totalPage);
		return product;
	}
	
	public List<ProductsDto> SearchProductsByName(String productName) {
        return productsDao.SearchProductsByName(productName);
    }
}
