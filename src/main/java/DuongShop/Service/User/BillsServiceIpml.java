package DuongShop.Service.User;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DuongShop.Dao.BillsDao;
import DuongShop.Dto.CartDto;
import DuongShop.Entity.BillDetail;
import DuongShop.Entity.Bills;
@Service
public class BillsServiceIpml implements IBillsService {
	
	@Autowired
	private BillsDao billsDao = new BillsDao();

	public int AddBills(Bills bill) {
		
		return billsDao.AddBills(bill);
	}

	public int AddBillDetail(HashMap<Long, CartDto> carts) {
		long idBills = billsDao.GetIDLasBills();
		
		for(Map.Entry<Long, CartDto> itemcart : carts.entrySet()) {
			BillDetail billDetail  = new BillDetail();
			billDetail.setId_bills(idBills);
			billDetail.setId_product(itemcart.getValue().getProduct().getId_product());
			billDetail.setQuanty(itemcart.getValue().getQuanty());
			billDetail.setTotal(itemcart.getValue().getTotalPrice());
			billsDao.AddBillsDetail(billDetail);
		}
		return 0;
	}

	
}
