package DuongShop.Dao;

import org.springframework.stereotype.Repository;

import DuongShop.Entity.MapperUsers;
import DuongShop.Entity.Users;
@Repository
public class UsersDao extends BaseDao {
  
	public int  AddAccount(Users user) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO users ");
		sql.append("(email, password, display_name, address) ");
		sql.append("VALUES ");
		sql.append("('"+user.getEmail()+"', '"+user.getPassword()+"', '"+user.getDisplay_name()+"', '"+user.getAddress()+"')");
		int insert =_jdbcTemplate.update(sql.toString());
		return 	insert;
	};
	
	public Users GetUserByAccount(Users user) {
		String sql ="SELECT * FROM users WHERE email = '"+user.getEmail()+"'";
			Users rerult =  _jdbcTemplate.queryForObject(sql, new MapperUsers());
			return 	rerult;
		}; 
}
