package DuongShop.Controller.User;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import DuongShop.Dto.ProductsDto;
import DuongShop.Service.User.CategoryServiceImpl;

@Controller
public class SearchController {

    @Autowired
    private CategoryServiceImpl categoryService;

    @GetMapping("/tim-kiem")
    public String searchProducts(@RequestParam("q") String query, Model model) {
        // Thực hiện tìm kiếm sản phẩm theo tên
        List<ProductsDto> products = categoryService.SearchProductsByName(query);
        model.addAttribute("searchKeyword", query);
        model.addAttribute("products", products);
        // Chuyển hướng đến trang hiển thị kết quả tìm kiếm
        return "user/search";
    }
}