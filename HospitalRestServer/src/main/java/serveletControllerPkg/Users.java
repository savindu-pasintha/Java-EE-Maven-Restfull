package serveletControllerPkg;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Enumeration;

import databasePkg.Login;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Users")
public class Users extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Users() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at get: ").append(request.getContextPath());
//http://localhost:8080/HospitalRestServer/Users?id=kk&username=kk&password=aaa&delete=
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("value-" + request.getParameter("save"));
		System.out.println("value-" + request.getParameter("username"));
		System.out.println("value-" + request.getParameter("password"));
		System.out.println("value-" + request.getParameter("delete"));
		System.out.println("value-" + request.getParameter("id"));

		if (request.getParameter("save") == "save" &&
				request.getParameter("username") != null
				&& request.getParameter("password") != null) {
			try {
				if (new Login().update(request.getParameter("username"), request.getParameter("password"),
						request.getParameter("username"))) {
					System.out.println("saved 1");
					response.sendRedirect("./users.jsp");
				} else {
					System.out.println("save 1 else");
					response.sendRedirect("./users.jsp");
				}
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else if(request.getParameter("username") != null &&
				request.getParameter("delete") == "delete"
				&& request.getParameter("id") != null) {
			try {
				if (new Login().deletec(request.getParameter("username"))) {
					System.out.println("deletd 1");
					response.sendRedirect("./users.jsp");
				} else {
					System.out.println("deletd 1 else");
					response.sendRedirect("./users.jsp");
				}
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

}
