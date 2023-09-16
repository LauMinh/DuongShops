package DuongShop.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import DuongShop.Entity.BillDetail;
import DuongShop.Entity.Bills;

@Repository
public class BillsDao extends BaseDao {
	public int AddBills(Bills bills) {
	    StringBuffer sql = new StringBuffer();
	    sql.append("INSERT INTO bills ");
	    sql.append("( ");
	    sql.append("  `email`, `phone`, `display_name`, `address`, `total`, `quanty`, `note` ");
	    sql.append(") ");
	    sql.append("VALUES ");
	    sql.append("( ");
	    sql.append("    '"+bills.getEmail()+"', ");
	    sql.append("    '"+bills.getPhone()+"', ");
	    sql.append("    '"+bills.getDisplay_name()+"', ");
	    sql.append("    '"+bills.getAddress()+"', ");
	    sql.append("    "+bills.getTotal()+", ");
	    sql.append("    "+bills.getQuanty()+", ");
	    sql.append("    '"+bills.getNote()+"' ");
	    sql.append(")");

	    int insert = _jdbcTemplate.update(sql.toString());
	    return insert;
	}

	public long GetIDLasBills() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT MAX(id) FROM bills;");
		long id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Long.class);
		return id;
	};
	
	public int AddBillsDetail(BillDetail billDetail) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO billdetail ");
		sql.append("( ");
		sql.append("    id_product, ");
		sql.append("    id_bills, ");
		sql.append("    quanty, ");
		sql.append("    total ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    "+billDetail.getId_product()+", ");
		sql.append("    "+billDetail.getId_bills()+", ");
		sql.append("    "+billDetail.getQuanty()+", ");
		sql.append("    "+billDetail.getTotal()+" ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}


	
}
