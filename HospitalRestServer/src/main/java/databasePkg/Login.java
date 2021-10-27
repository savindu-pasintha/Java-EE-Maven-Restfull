package databasePkg;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import modelsPkg.LoginModel;

public class Login extends Database {
	public String ss ="savindu";

	public Login() throws SQLException, ClassNotFoundException {
		super();
	}
	
	public boolean userValid(String username,String password) throws SQLException {
		boolean res = false;
		ResultSet resultSe = super.read("SELECT  * FROM login WHERE username='"+username+"'");	
		if (resultSet != null) {
			System.out.print("if 1");
			while (resultSe.next()) {
				if(password.equals(resultSe.getString("password"))) {
					res = true;
					System.out.print("if 2");
				}else {
					System.out.print("else 1");
				}
			}
		}else {
			res=false;
			System.out.print("else 2");
		}
		super.conn.close();
		System.out.print("search"+"-"+res+"\n");
		return res;
	}

	public ArrayList<LoginModel> read() throws SQLException {
		ResultSet resultSe = super.read("SELECT * FROM `login`");
		ArrayList<LoginModel> alm = new ArrayList<LoginModel>();
		if (resultSet != null) {
			int id=0;
			while (resultSe.next()) {
				LoginModel lm = new LoginModel();
				lm.setId(Integer.toString(id)); 
				lm.setUsername(resultSe.getString("username"));
				lm.setPassword(resultSe.getString("password"));
				lm.setTimestamp(resultSe.getString("timestamp"));
				alm.add(lm);
				id++;
			}
		}
		super.conn.close();
		return alm;
	}
	
	public boolean add(String username, String password) throws SQLException {
		super.add("INSERT INTO `login` (`username`, `password`, `timestamp`) VALUES (?,?,?)");
		super.pStatment.setString(1, username);
		super.pStatment.setString(2, password);
		super.pStatment.setString(3, null);
		return super.executeQuery();
		// id:autoincrement int
	}

	public boolean update(String username, String password,String idUsername) throws SQLException {
		super.update("UPDATE `login` SET `username`=?, `password`=? WHERE `username`=?");
		super.pStatment.setString(1, username);
		super.pStatment.setString(2, password);
		super.pStatment.setString(3, idUsername);
		return super.executeQuery();
	}

	public boolean deletec(String username) throws SQLException {
		super.delete("DELETE FROM `login` WHERE `username`=?");
		super.pStatment.setString(1,username);
		return super.executeQuery();
	}
	
	

}