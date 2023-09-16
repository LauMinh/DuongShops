package DuongShop.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import DuongShop.Dto.CartDto;
import DuongShop.Entity.Bills;

@Service
public interface IBillsService {
	public int AddBills(Bills bill);
	
	public int AddBillDetail(HashMap<Long, CartDto> cart);

}
