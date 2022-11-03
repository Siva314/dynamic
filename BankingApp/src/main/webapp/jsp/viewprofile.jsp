<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View profile</title>
<link rel="stylesheet" type="text/css" href="css/style.css"></link>
</head>
<body>
<h2 style= color:gold>${message}</h2>
	<form action="<%= request.getContextPath() %>/ControllerServlet" method="post">
		<div>
			<table>
				<tr>
					<td>Name :</td>
					<td><input type="text" value="${customer.getName() } "readonly></td>
				</tr>
				<tr>
					<td>Date of birth :</td>
					<td><input value=${customer.getDateOfBirth() } readonly></td>
				</tr>
				<tr>
					<td>Mobile :</td>
					<td><input type="tel" name="mobile"
						value=${customer.getMobile() } maxlength="10"></td>
				</tr>
				<tr>
					<td>Email :</td>
					<td><input type="email" name="email"
						value=${customer.getEmail() }></td>
				</tr>
				<tr>
					<td>Address :</td>
					<td><textarea name="address" readonly>${customer.getAddress() }</textarea></td>
				</tr>
				<tr>
					<td >Pancard :</td>
					<td><input type="text" value=${customer.getPancard() }
						readonly></td>
				</tr>
				<tr>
					<td>Aadhaar :</td>
					<td><input type="text" value=${customer.getAadhaar() }
						readonly></td>
				</tr>
			</table>
		</div>
		<div class="center">
			<button name="action" value="saveprofile">Save</button>
		</div>
	</form>
</body>
</html>