<%@page import="in.co.rays.project_4.ctl.UserListCtl"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="in.co.rays.project_4.util.ServletUtility"%>
<%@page import="in.co.rays.project_4.util.HTMLUtility"%>
<%@page import="in.co.rays.project_4.model.RoleModel"%>
<%@page import="in.co.rays.project_4.util.DataUtility"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- 	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UserListView</title>
<script src="<%=ORSView.APP_CONTEXT%>/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=ORSView.APP_CONTEXT%>/js/CheckBox11.js"></script>
<base>
<style>
.p1 {
	font-size: 18px;
	font-weight: bold;
}

.p2 {
	padding: 5px;
	margin: 3px;
}

.footer {
    position:static;
	 left: 0;
	width: 100%;
	height: 0px;
	text-align: center;
}
</style>

</head>
<body>
	<%@include file="Header.jsp"%>
	<jsp:useBean id="bean1" class="in.co.rays.project_4.bean.UserBean"
		scope="request"></jsp:useBean>
	<center>

		<form action="<%=ORSView.USER_LIST_CTL%>" method="post">
			<h1 style="font-size: 40px;">User List</h1>
			<center>
				<font color="red" size="5px"><%=ServletUtility.getErrorMessage(request)%></font>
			</center>
			<center>
				<font color="green" size="5px"><%=ServletUtility.getSuccessMessage(request)%></font>
			</center>
			<jsp:useBean id="bean" class="in.co.rays.project_4.bean.UserBean"
				scope="request"></jsp:useBean>
			<%
				List list1 = (List) request.getAttribute("roleList");
			%>


			<%
				int pageNo = ServletUtility.getPageNo(request);
				int pageSize = ServletUtility.getPageSize(request);
				int index = ((pageNo - 1) * pageSize) + 1;
				int nextPageSize = DataUtility.getInt(request.getAttribute("nextListSize").toString());
				RoleBean rbean1 = new RoleBean();
				RoleModel rmodel = new RoleModel();

				List list = ServletUtility.getList(request);
				Iterator<UserBean> it = list.iterator();
				if (list.size() != 0) {
			%>





<div>
			<table width=100%>
				<tr>
					<td align="center"><label>FirstName:</label> <input
						type="text" name="firstName" placeholder="Enter First Name"
						value="<%=ServletUtility.getParameter("firstName", request)%>">

						&emsp;<label>LoginId</label> <input type="text" name="login"
						placeholder="Enter LoginId"
						value="<%=ServletUtility.getParameter("login", request)%>">
						&emsp;<label class="p1">Role</label>&emsp;<%=HTMLUtility.getList("roleId", String.valueOf(bean.getRoleId()), list1)%>
						&emsp; <input type="submit" name="operation"
						value="<%=UserListCtl.OP_SEARCH%>" style="padding: 5px;">&emsp;
						<input type="submit" name="operation"
						value="<%=UserListCtl.OP_RESET%>" style="padding: 5px;"></td>
					</td>
				</tr>
			</table>
			</div>
			<br>
			<div>
			<table border="1" width="100%">
				<tr>
					<th width="10%"><input type="checkbox" id="select_all"
						name="Select"> Select All</th>
					<th>S.No</th>
					<th>FirstName</th>
					<th>LastName</th>
					<th>LoginId</th>
					<th>Gender</th>
					<th>Role</th>
					<th>DOB</th>
					<th>Edit</th>
				</tr>
				<td>
					<%
						while (it.hasNext()) {
								bean = it.next();

								RoleBean rbean = rmodel.findByPK(bean.getRoleId());

								System.out.print(rbean.getName());
					%>


				</td>

				<tr>
					<td><input type="checkbox" class="checkbox" name="ids"
						value="<%=bean.getId()%>"
						<%if (bean.getRoleId() == RoleBean.ADMIN) {%> <%="disabled"%>
						<%}%>></td>

					<td align="center"><%=index++%></td>
					<td align="center"><%=bean.getFirstName()%></td>
					<td align="center"><%=bean.getLastName()%></td>
					<td align="center"><%=bean.getLogin()%></td>
					<td align="center"><%=bean.getGender()%></td>
					<td align="center"><%=rbean.getName()%></td>
					<%
						SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
								String date = formatter.format(bean.getDob());
					%>
					<td align="center"><%=date%></td>
					<td align="center"><a href="UserCtl?id=<%=bean.getId()%>"
						<%if (bean.getRoleId() == RoleBean.ADMIN) {%>
						onclick="return false;" <%}%>>Edit</a></td>
				</tr>
				<%
					}
				%>

			</table>
			</div>
			<div>
			<table width="100%">
				<tr>
					<td><input type="submit" name="operation"
						style="padding: 5px;" value="<%=UserListCtl.OP_PREVIOUS%>"
						<%=pageNo > 1 ? "" : "disabled"%>></td>
					<td><input type="submit" name="operation"
						style="padding: 5px;" class="button1" style="padding: 5px;"
						value="<%=UserListCtl.OP_NEW%>"></td>
					<td><input type="submit" name="operation" class="button1"
						style="padding: 5px;" value="<%=UserListCtl.OP_DELETE%>"></td>
					<td align="right"><input type="submit" name="operation"
						style="padding: 5px;" value="<%=UserListCtl.OP_NEXT%>"
						<%=(nextPageSize != 0) ? "" : "disabled"%>></td>


				</tr>
				<tr></tr>

			</table>
			</div>
			<%
				}
				if (list.size() == 0) {
					System.out.println("user list view list.size==0");
			%>

			<input type="submit" name="operation" style="padding: 5px;"
				value="<%=UserListCtl.OP_BACK%>">
			<%
				}
			%>
<div>
			<input type="hidden" name="pageNo" value="<%=pageNo%>"> <input
				type="hidden" name="pageSize" value="<%=pageSize%>">
			</div><br><br><br>
		</form>
	</center>
	
<%@include file="Footer.jsp"%>
</body>
</html>