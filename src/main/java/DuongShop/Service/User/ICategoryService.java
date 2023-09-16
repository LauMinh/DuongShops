package DuongShop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import DuongShop.Dto.ProductsDto;
@Service
public interface ICategoryService {
	
	public List<ProductsDto> GetAllProductsByID(int id);
	
	public List<ProductsDto> GetDataProductsPaginate(int id,int start, int totalProductPage);
	
	public List<ProductsDto> SearchProductsByName(String productName);
}
