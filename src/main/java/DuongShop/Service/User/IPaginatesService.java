package DuongShop.Service.User;

import org.springframework.stereotype.Service;

import DuongShop.Dto.PaginatesDto;

@Service
public interface IPaginatesService {
	public PaginatesDto GetinfoPaginates(int totalData, int limit, int currentPage);
		

}
