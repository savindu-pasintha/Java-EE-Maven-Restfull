# Java-EEJAVA-Maven-Restful-Project-JDBC-GSON-JERSEY-OKHTTP-DESIGN-PATTERN
![image](https://user-images.githubusercontent.com/64083148/139575114-930889bb-f492-4403-a7b1-1e0d80cedee3.png)
![image](https://user-images.githubusercontent.com/64083148/139575144-2bd20c14-7ce4-469f-a0ba-745a69c9d9f2.png)
![image](https://user-images.githubusercontent.com/64083148/139575154-949bf2a5-914e-400d-a6e2-cfedb5713d25.png)
![image](https://user-images.githubusercontent.com/64083148/139575168-2e4816e8-bec2-4ad5-87c7-46547c8c0c32.png)
![image](https://user-images.githubusercontent.com/64083148/139575192-c08e985b-f02f-4c31-a76c-52570bd8957d.png)
![image](https://user-images.githubusercontent.com/64083148/139575207-693f374e-9733-47f6-92cb-a4b555e41d62.png)
![image](https://user-images.githubusercontent.com/64083148/139575225-7205ede1-6420-48bf-a259-0f4e36cd090f.png)
![image](https://user-images.githubusercontent.com/64083148/139575273-188f832d-a93a-489d-aadb-d4ff2f490b66.png)

#REST END POINTS

package com.savindupasintha.hospitalRestServer;

import java.sql.SQLException;
import java.util.ArrayList;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import databasePkg.Appoinment;
import databasePkg.Centers;
import databasePkg.Contact;
import databasePkg.Doctor;
import databasePkg.JobRegistration;
import databasePkg.Login;
import databasePkg.MedicalPackages;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.DELETE;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.PUT;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

import modelsPkg.CentersModel;
import modelsPkg.ContactModel;
import modelsPkg.DoctorModel;
import modelsPkg.JobRegistrationModel;
import modelsPkg.LoginModel;
import modelsPkg.MedicalPackagesModel;

@Path("database")
public class DatabaseService {

	@GET
	@Produces(MediaType.TEXT_PLAIN)
	@Consumes(MediaType.TEXT_PLAIN)
	public String getRestService() {
		return "Database web api working ! ppp";
	}

	@GET
	@Path("/user")
	@Produces(MediaType.APPLICATION_JSON)
	public Response getUsers(@PathParam("users") String users) throws ClassNotFoundException, SQLException {
		ArrayList<LoginModel> umList = new ArrayList<LoginModel>();
		umList = new Login().read();
		Gson gson = new GsonBuilder().create();
		return Response.status(200).entity(gson.toJson(umList)).build();
		// http://localhost:8080/HospitalRestServer/webapi/database/centers
	}

	@GET
	@Path("/doctors")
	@Produces(MediaType.APPLICATION_JSON)
	public Response getDoctors(@PathParam("doctors") String centers) throws ClassNotFoundException, SQLException {
		ArrayList<DoctorModel> dmList = new ArrayList<DoctorModel>();
		dmList = new Doctor().read();
		Gson gson = new GsonBuilder().create();
		return Response.status(200).entity(gson.toJson(dmList)).build();
		// http://localhost:8080/HospitalRestServer/webapi/database/doctors
	}

	@GET
	@Path("/centers")
	@Produces(MediaType.APPLICATION_JSON)
	public Response getCenters(@PathParam("centers") String centers) throws ClassNotFoundException, SQLException {
		ArrayList<CentersModel> cmList = new ArrayList<CentersModel>();
		cmList = new Centers().read();
		Gson gson = new GsonBuilder().create();
		return Response.status(200).entity(gson.toJson(cmList)).build();
		// http://localhost:8080/HospitalRestServer/webapi/database/centers
	}

	@GET
	@Path("/medicalpackages")
	@Produces(MediaType.APPLICATION_JSON)
	public Response getPackages(@PathParam("medicalpackages") String packages)
			throws ClassNotFoundException, SQLException {
		ArrayList<MedicalPackagesModel> mpList = new ArrayList<MedicalPackagesModel>();
		mpList = new MedicalPackages().read();
		Gson gson = new GsonBuilder().create();
		return Response.status(200).entity(gson.toJson(mpList)).build();
		// http://localhost:8080/HospitalRestServer/webapi/database/medicalpackages
	}

	@POST
	@Path("/login/{username}/{password}")
	@Produces(MediaType.TEXT_PLAIN)
	public Response getLogin(@PathParam("username") String username, @PathParam("password") String password)
			throws ClassNotFoundException {
		boolean valid = false;
		if (username != null && password != null) {
			try {
				valid = new Login().userValid(username.toString(), password.toString());
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		// http://localhost:8080/HospitalRestServer/webapi/database/login/savindupasingtha@gmail.com/pass1234
		return Response.status(200).entity(valid).build();
	}

	@POST
	@Path("/registration/{username}/{password}")
	@Produces(MediaType.TEXT_PLAIN)
	public Response getRegistration(@PathParam("username") String username, @PathParam("password") String password) {
		boolean valid = false;
		try {
			if (username != null && password != null) {
				try {
					valid = new Login().add(username.toString(), password.toString());
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		// http://localhost:8080/HospitalRestServer/webapi/database/registration/savindupasingtha@gmail.com/pass1234
		return Response.status(200).entity(valid).build();
	}

	@POST
	@Path("/appoinment/{doctor}/{specialyzation}/{hospitalname}/{datetime}/{userid}")
	@Produces(MediaType.TEXT_PLAIN)
	public Response getAppoinment(@PathParam("doctor") String doctor, @PathParam("specialyzation") String spc,
			@PathParam("hospitalname") String hospitalName, @PathParam("datetime") String dateTime,
			@PathParam("userid") String userId) throws SQLException {
		boolean valid = false;
		if (doctor != null && spc != null && hospitalName != null && dateTime != null && userId != null) {
			try {
				valid = new Appoinment().add(doctor, spc, hospitalName, dateTime, userId);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
		return Response.status(200).entity(valid).build();
		// {doctor}/{specialyzation}/{hospitalname}/{datetime}/{userid}
	}

	@POST
	@Path("/contact/{name}/{email}/{telephone}/{message}")
	@Produces(MediaType.TEXT_PLAIN)
	public Response getContact(@PathParam("name") String name, @PathParam("email") String email,
			@PathParam("telephone") String telephone, @PathParam("message") String message) {
		boolean valid = false;
		if (name != null && email != null && message != null && telephone != null) {
			ContactModel co = new ContactModel();
			co.setId(0);
			co.setName(name);
			co.setEmail(email);
			co.setCall(telephone);
			co.setMessage(message);
			try {
				valid = new Contact().add(co);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		// http://localhost:8080/HospitalRestServer/webapi/database/contact/{name}/{email}/{telephone}/{message}
		return Response.status(200).entity(valid).build();
	}

	@POST
	@Path("/doctorJobRegistration/{first}/{last}/{mobile}/{email}/{city}/{collage}/{digree}/{medicalcetificateid}/{specification}")
	@Produces(MediaType.TEXT_PLAIN)
	public Response getDoctorJobRegistration(@PathParam("first") String first, @PathParam("last") String last,
			@PathParam("mobile") String mobile, @PathParam("email") String email, @PathParam("city") String city,
			@PathParam("collage") String collage, @PathParam("digree") String digree,
			@PathParam("medicalcetificateid") String mcid, @PathParam("specification") String spc) {
		boolean valid = false;
		if (first != null && spc != null && last != null && mobile != null && email != null) {
			try {
				JobRegistrationModel jo = new JobRegistrationModel();
				jo.setId(0);
				jo.setFirst(first);
				jo.setLast(last);
				jo.setMobile(mobile);
				jo.setEmail(email);
				jo.setCity(city);
				jo.setCollage(collage);
				jo.setDigree(digree);
				jo.setMcid(mcid);
				jo.setSpc(spc);
				try {
					valid = new JobRegistration().add(jo);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
		// http://localhost:8080/HospitalRestServer/webapi/database/doctorJobRegistration/{first}/{last}/{mobile}/{email}/{city}/{collage}/{digree}/{medicalcetificateid}/{specification}")
		return Response.status(200).entity(valid).build();
	}

	@PUT
	@Path("/user/{username}/{password}/{id}")
	@Produces(MediaType.TEXT_PLAIN)
	public Response getUserUpdate(@PathParam("username") String username, @PathParam("password") String password,@PathParam("id") String id) {
		boolean valid = false;
		try {
			if (username != null && password != null) {
				try {
					valid = new Login().update(username.toString(), password.toString(),id.toString());
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return Response.status(200).entity(valid).build();
	}
	
	@DELETE
	@Path("/user/{id}")
	@Produces(MediaType.TEXT_PLAIN)
	public Response getUserDelete(@PathParam("id") String id) {
		boolean valid = false;
		try {
			if (id != null) {
				try {
					valid = new Login().delete(id.toString());
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return Response.status(200).entity(valid).build();
	}
	
	@DELETE
	@Path("/centers/{id}")
	@Produces(MediaType.TEXT_PLAIN)
	public Response getCenterDelete(@PathParam("id") String id) {
		boolean valid = false;
		try {
			if (id != null) {
				try {
					valid = new Centers().delete(id.toString());
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return Response.status(200).entity(valid).build();
	}
}

#SINGLETON CLASS ACCESS
package databasePkg;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import modelsPkg.LoginModel;

public class AccessSingletonclass {
	private Singleton obj = null;

	public AccessSingletonclass() throws ClassNotFoundException, SQLException {
		obj = Singleton.getInstance();
	}

	public ArrayList<LoginModel> read() throws SQLException, ClassNotFoundException {
		ResultSet resultSet = obj.read("SELECT * FROM `login`");
		ArrayList<LoginModel> alm = new ArrayList<LoginModel>();
		if (resultSet != null) {
			int id = 0;
			while (resultSet.next()) {
				LoginModel lm = new LoginModel();
				lm.setId(Integer.toString(id));
				lm.setUsername(resultSet.getString("username"));
				lm.setPassword(resultSet.getString("password"));
				lm.setTimestamp(resultSet.getString("timestamp"));
				alm.add(lm);
				id++;
			}
		}
		return alm;
	}

	public boolean add(String username, String password) throws SQLException {

		obj.add("INSERT INTO `login` (`username`, `password`, `timestamp`) VALUES (?,?,?)");
		obj.pStatment.setString(1, username);
		obj.pStatment.setString(2, password);
		obj.pStatment.setString(3, null);
		return obj.executeQuery();
		// id:autoincrement int
	}

	public boolean update(String username, String password, String idUsername) throws SQLException {
		obj.update("UPDATE `login` SET `username`=?, `password`=? WHERE `username`=?");
		obj.pStatment.setString(1, username);
		obj.pStatment.setString(2, password);
		obj.pStatment.setString(3, idUsername);
		return obj.executeQuery();
	}

	public boolean deletec(String username) throws SQLException {
		obj.delete("DELETE FROM `login` WHERE `username`=?");
		obj.pStatment.setString(1, username);
		return obj.executeQuery();
	}

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		System.out.println(new AccessSingletonclass().read().get(1).getUsername());
		System.out.println(new AccessSingletonclass().deletec("ff"));
	}

}

#OKHTTP REST SERVICE HANDLE
package ConnectRestServer;

import java.io.IOException;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import modelsPkg.CentersModel;

import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class ConnectinServer {
	public static final MediaType MEDIA_TYPE_MARKDOWN = MediaType.parse("text/x-markdown; charset=utf-8");
	private final OkHttpClient client = new OkHttpClient();
	private String httpUrl = "http://localhost:8080/HospitalRestServer/webapi/database";

	public void GETDataFrommmmm(String endPointName) {
		Request request = new Request.Builder().url(httpUrl + endPointName).build();
		Call call = client.newCall(request);
		call.enqueue(new Callback() {
			public void onResponse(Call call, Response response) throws IOException {
				System.out.print(response.body().string());
			}

			public void onFailure(Call call, IOException e) {
				System.out.print(e.toString());
			}
		});
	}

	public String GETDataFrom(String endPointName) throws IOException {
		Request request = new Request.Builder().url(httpUrl + endPointName).build();
		try (Response response = client.newCall(request).execute()) {
			return response.body().string();
		}
	}

	public String POSTDataFrom(String endPointName, String postBody) throws Exception {
		@SuppressWarnings("deprecation")
		Request request = new Request.Builder().url(httpUrl + endPointName)
				.post(RequestBody.create(MEDIA_TYPE_MARKDOWN, postBody)).build();
		try (Response response = client.newCall(request).execute()) {
			if (!response.isSuccessful()) {
				throw new IOException("Unexpected code " + response);
			} else {
				return response.body().string();
			}
		}
	}
	
	

	/*
	 * whenAsynchronousGetRequest_thenCorrect see web site
	 * https://square.github.io/okhttp/recipes/#posting-a-string-kt-java
	 * 
	 * FIX CORS ERROS LOOK THIS
	 * 
	 * Request request = new Request.Builder()
	 * .url("https://api.github.com/repos/square/okhttp/issues")
	 * .header("User-Agent", "OkHttp Headers.java") .addHeader("Accept",
	 * "application/json; q=0.5") .addHeader("Accept",
	 * "application/vnd.github.v3+json") .build();
	 * 
	 * 1- api response content type ckeck in postman
	 *  2- create model class to json
	 * response key names using
	 *  3- gson using deserialize data set to model class
	 * array object
	 * 
	 * 
	public static void main(String[] args) throws Exception {
		String responseBodyString = new ConnectinServer().GETDataFrom("/centers");
		Gson gson = new GsonBuilder().create();
		CentersModel[] cm = gson.fromJson(responseBodyString, CentersModel[].class);
		System.out.println("new-" + cm[2].getName() + "\n");
	}

	 */

}




