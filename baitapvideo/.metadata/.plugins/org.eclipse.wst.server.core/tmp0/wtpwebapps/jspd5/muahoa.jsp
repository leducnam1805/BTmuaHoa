<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mua Hoa</title>
</head>
<body>
	<div>
		<h1>Form mua hoa</h1>
		<form action="<%= request.getContextPath() %>/xuly-muahoa" method="post">
		<label>ID Hoa: </label>
		<input type ="text" value="" name="idhoa"/><br></br>
		
		<label>Tên Hoa: </label>
		<input type ="text" value="" name="tenhoa"/><br></br>
		
		<label>Số Lượng: </label>
		<input type ="text" value="" name="soluong"/><br></br>
		
		<label>Giá Bán: </label>
		<input type ="text" value="" name="giaban"/><br></br>
	<input type="submit" value="mua" name="submit">
		</form>
	</div>
</body>
</html>