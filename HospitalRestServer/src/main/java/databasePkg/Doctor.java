package databasePkg;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import modelsPkg.DoctorModel;

public class Doctor extends Database {

	public Doctor() throws SQLException, ClassNotFoundException {
		super();
	}

	public ArrayList<DoctorModel> read() throws SQLException {
		ArrayList<DoctorModel> dmList = new ArrayList<DoctorModel>();
		ResultSet resultSe = super.read("SELECT * FROM doctors");
		if (resultSet != null) {
			while (resultSe.next()) {
				DoctorModel dm = new DoctorModel();
				dm.setId(resultSe.getString("id"));
				dm.setName(resultSe.getString("name"));
				dm.setPosition(resultSe.getString("position"));
				dm.setHospital(resultSe.getString("hospital"));
				dm.setSpc(resultSe.getString("specialization"));
				dm.setCall(resultSe.getString("call"));
				dmList.add(dm);
			}
			super.conn.close();
		}
		
		return dmList;
	}

	public boolean add(DoctorModel obj)
			throws SQLException {
		String query = "INSERT INTO `doctors` (`id`, `name`, `position`,`hospital`, `specialization`, `call`) VALUES (?,?,?,?,?,?)";
		super.add(query);
		super.pStatment.setString(1, obj.getId());
		super.pStatment.setString(2, obj.getName());
		super.pStatment.setString(3, obj.getPosition());
		super.pStatment.setString(4, obj.getHospital());
		super.pStatment.setString(5, obj.getSpc());
		super.pStatment.setString(6, obj.getCall());
		return super.executeQuery();
	}

	public boolean update(DoctorModel obj)
			throws SQLException {
		super.update("UPDATE doctors SET `id`=?, `name`=?, `position`=?,`hospital`=?, `specialization`=?, `call`=? WHERE `id`=?");
		super.pStatment.setString(1, obj.getId());
		super.pStatment.setString(2, obj.getName());
		super.pStatment.setString(3, obj.getPosition());
		super.pStatment.setString(4, obj.getHospital());
		super.pStatment.setString(5, obj.getSpc());
		super.pStatment.setString(6, obj.getCall());
		super.pStatment.setString(7, obj.getId());
		return super.executeQuery();
	}

	public boolean deletec(String id) throws SQLException {
		String query = "DELETE FROM `centers` WHERE id=?";
		super.pStatment.setString(1, id);
		super.delete(query);
		return super.executeQuery();
	}

}
