<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add account</title>
<link rel="stylesheet" type="text/css" href="css/style.css"></link>
</head>
<body>
	<div>
	<div>
	<label>userid</label><input type="text" value="${userId } "readonly>
	</div>
		<div>
			<label>pancard</label><input name="pancard"type="text">
		</div>
		<div>
			<label>Aadhaar</label><input name="aadhaar" type="number">
		</div>
		<div>
			<label>Opening balance</label><input name="balance" type="number">
		</div>
		<div>
			<label>Account type</label><input name="type" type="text">
		</div>
	</div>
	<button name="action" value="addnewuser">Add</button>
</body>
</html>