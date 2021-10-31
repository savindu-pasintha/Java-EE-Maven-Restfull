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
		// http://localhost:8080/HospitalRestServer/webapi/database/user
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
			@PathParam("medicalcetificateid") String mcid, @PathParam("specification") String spc) throws SQLException, ClassNotFoundException {
		boolean valid = false;
		if (first != null && spc != null && last != null && mobile != null && email != null) {
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
