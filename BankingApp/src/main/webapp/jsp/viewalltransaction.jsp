<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transaction details</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()  %>/css/style.css"></link>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<h2 style="color: gold">${message}</h2>
	<form action="<%=request.getContextPath()%>/ControllerServlet" method="post">
	<label>Enter User Id</label><input name="id" type="number" min="1">
	<button name="action" value="showaccount">Show</button>
	</form>
	<form action="<%=request.getContextPath()%>/ControllerServlet"
		method="post">
		<label>account number</label> <select name="accountNumber">
			<c:forEach var="account" items="${accountInfo }">
				<option value="${account.key }">${account.key }</option>
			</c:forEach>
		</select>
		<button name="action" value="showusertransaction">Show</button>
	</form>
	<div>
		<table>
			<tr>
				<th>Transaction id</th>
				<th>From account</th>
				<th>To account</th>
				<th>Transaction amount</th>
				<th>Mode of Transaction</th>
				<th>Closing Balance</th>
				<th>Transaction Date</th>
			</tr>
			<c:forEach var="transaction" items="${transactionDetails }">
				<tr>
					<td>${transaction.getTransactionId() }</td>
					<td>${transaction.getSenderAccountNumber() }</td>
					<td>${transaction.getReceiverAccountNumber() }</td>
					<td>${transaction.getTransactionAmount() }</td>
					<td>${transaction.getTransactionType() }</td>
					<td>${transaction.getCurrentBalance() }</td>
					<td><jsp:useBean id="myDate" class="java.util.Date" /> <c:set
							target="${myDate}" property="time" value="${transaction.getTransactionDate() }" />
						${myDate}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>