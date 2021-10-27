package modelsPkg;

public class MedicalPackagesModel {
	private String name, categry, servicetime, description, location, call, price = null;
	private int id = 0;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategry() {
		return categry;
	}

	public void setCategry(String categry) {
		this.categry = categry;
	}

	public String getServicetime() {
		return servicetime;
	}

	public void setServicetime(String servicetime) {
		this.servicetime = servicetime;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getCall() {
		return call;
	}

	public void setCall(String call) {
		this.call = call;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	/*
	 * 
	 * @WebServlet("/User");	
		response.getWriter().append("Served at: ").append(request.getContextPath());
		   System.out.print(request.getParameter("username")+
				    request.getParameter("password"));
				    <th scope="row">
					<input disabled
						value="<%out.print(al.get(i).getId());%>" /></th>
					<td><input id="<%out.print(Integer.toString(i));%>"
						class="<%out.print(Integer.toString(i));%>" disabled
						name="username" value="<%out.print(al.get(i).getUsername());%>" />
					</td>
					<td><input id="<%out.print(Integer.toString(i) + "p");%>"
						class="ab" disabled name="password"
						value="<%out.print(al.get(i).getPassword());%>" /></td>
					<td>
						<%
						out.print(al.get(i).getTimestamp());
						%>
					</td>
					<td>
						<input type="submit" value = "d" />
							<i id="<%out.print(Integer.toString(i) + "abc");%>"
								class="fa fa-edit"></i>
						
					</td>

					<td><i onclick="save('<%out.print(Integer.toString(i));%>');"
						class="fa fa-save"></i></td>
					<td><i onclick="delet('<%out.print(Integer.toString(i));%>');"
						class="fa fa-trash"></i></td>
				    */

}
