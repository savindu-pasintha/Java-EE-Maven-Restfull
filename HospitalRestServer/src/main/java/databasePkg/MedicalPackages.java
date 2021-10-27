package databasePkg;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import modelsPkg.MedicalPackagesModel;

public class MedicalPackages extends Database {

	public MedicalPackages() throws SQLException, ClassNotFoundException {
		super();
	}

	public ArrayList<MedicalPackagesModel> read() throws SQLException {
		ArrayList<MedicalPackagesModel> mpList = new ArrayList<MedicalPackagesModel>();
		ResultSet resultSe = super.read("SELECT * FROM `packages`");
		if (resultSet != null) {
			while (resultSe.next()) {
				MedicalPackagesModel mp = new MedicalPackagesModel();
				mp.setId(resultSe.getInt("id"));
				mp.setName(resultSe.getString("name"));
				mp.setCall(resultSet.getString("call"));
				mp.setCategry(resultSet.getString("category_name"));
				mp.setDescription(resultSet.getString("description"));
				mp.setLocation(resultSe.getString("location"));
				mp.setPrice(resultSe.getString("price"));
				mp.setServicetime(resultSe.getString("service_time"));
				mpList.add(mp);
			}
			super.conn.close();
		}

		return mpList;
	}

	public boolean add(MedicalPackagesModel obj) throws SQLException {
		String query = "INSERT INTO `packages` (`id`, `name`, `category_name`, `service_name`, `description`, `location`, `service_time`, `call`, `price`) VALUES (?,?,?,?,?,?,?,?,?)";
		super.add(query);
		super.pStatment.setInt(1,obj.getId());
		super.pStatment.setString(2,obj.getName());
		super.pStatment.setString(3,obj.getCategry());
		super.pStatment.setString(4,obj.getCategry());
		super.pStatment.setString(5,obj.getDescription());
		super.pStatment.setString(6,obj.getLocation());
		super.pStatment.setString(7,obj.getServicetime());
		super.pStatment.setString(8,obj.getCall());
		super.pStatment.setString(9,obj.getPrice());
		return super.executeQuery();
		// id=int autoincrement
	}

	public boolean update(MedicalPackagesModel obj) throws SQLException {
		super.update(
				"UPDATE `packages` SET  `id`=?, `name`=?, `category_name`=?, `service_name`=?, `description`=?, `location`=?, `service_time`=?, `call`=?, `price`=?  WHERE `id`=?");
		super.pStatment.setInt(1, obj.getId());
		super.pStatment.setString(2, obj.getName());
		super.pStatment.setString(3,obj.getCategry());
		super.pStatment.setString(4, obj.getCategry());
		super.pStatment.setString(5,obj.getDescription());
		super.pStatment.setString(6,obj.getLocation());
		super.pStatment.setString(7,obj.getServicetime());
		super.pStatment.setString(8,obj.getCall());
		super.pStatment.setString(9,obj.getPrice());
		super.pStatment.setInt(10, obj.getId());
		return super.executeQuery();
		// id=int autoincrement timestamp=autoset
	}

	public boolean deletec(int id) throws SQLException {
		String query = "DELETE FROM `packages` WHERE id=?";
		super.pStatment.setInt(1,1);
		super.delete(query);
		return super.executeQuery();
	}
	
	
	

}
