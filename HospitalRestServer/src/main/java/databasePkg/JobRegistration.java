package databasePkg;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import modelsPkg.JobRegistrationModel;

public class JobRegistration extends Database {

	public JobRegistration() throws SQLException, ClassNotFoundException {
		super();
	}

	public ArrayList<JobRegistrationModel> read()  throws SQLException{
		ArrayList<JobRegistrationModel> jrmList = new ArrayList<JobRegistrationModel>();
		ResultSet resultSe = super.read("SELECT * FROM doctor_job_registration");
		if (resultSet != null) {
			while (resultSe.next()) {
				JobRegistrationModel dm = new JobRegistrationModel();
				dm.setId(resultSe.getInt("id"));
				dm.setFirst(resultSe.getString("first"));
				dm.setLast(resultSe.getString("last"));
				dm.setMobile(resultSe.getString("call"));
				dm.setEmail(resultSe.getString("email"));
				dm.setCity(resultSe.getString("city"));
				dm.setDigree(resultSe.getString("digree"));
				dm.setCollage(resultSe.getString("collage"));
				dm.setMcid(resultSe.getString("medical_cetificate_id"));
				dm.setSpc(resultSe.getString("specialize"));
				dm.setTimestamp(resultSe.getString("timestamp"));
				jrmList.add(dm);
			}
			super.conn.close();
		}
		
		return jrmList;
	}

	public boolean add(JobRegistrationModel jrmo) throws SQLException {
		String query = "INSERT INTO `doctor_job_registration` (`id`,`first`, `last`, `call`, `email`, `city`,"
				+ " `collage`, `digree`, `medical_cetificate_id`, `specialize`,`timestamp`) "
				+ "      VALUES (?,?,?, ?,?,?, ?,?,?, ?,?)";
		// id - autoincremnet , timestamp - autoset
		super.add(query);
		super.pStatment.setInt(1, 0);
		super.pStatment.setString(2, jrmo.getFirst());
		super.pStatment.setString(3, jrmo.getLast());
		super.pStatment.setString(4, jrmo.getMobile());
		super.pStatment.setString(5, jrmo.getEmail());
		super.pStatment.setString(6, jrmo.getCity());
		super.pStatment.setString(7, jrmo.getCollage());
		super.pStatment.setString(8, jrmo.getDigree());
		super.pStatment.setString(9, jrmo.getMcid());
		super.pStatment.setString(10, jrmo.getSpc());
		super.pStatment.setString(11, null);
		return super.executeQuery();
	}

}
