package DuongShop.Service.User;

import org.springframework.stereotype.Service;

import DuongShop.Entity.Users;

@Service
public interface IAccountService {

	public int AddAccount(Users user);
	
	public Users CheckAccount(Users user);
}
