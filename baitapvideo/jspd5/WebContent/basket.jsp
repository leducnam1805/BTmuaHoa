<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>In ra danh sách hoa</title>
</head>
<body>
	<div>
		<%
			if (session.getAttribute("listHoa") != null) {
				ArrayList<Hoa> listHoa = (ArrayList<Hoa>) session.getAttribute("listHoa");
		%>

		<h1>In ra danh sách hoa</h1>
		<table border="2" width="500px">
			<tr>
				<th>ID Hoa</th>
				<th>Tên Hoa</th>
				<th>Số Lượng</th>
				<th>Giá Bán</th>
				<th>Thành Tiền</th>
			</tr>
			<tr>
				<td>1</td>
				<td>Hoa Lan</td>
				<td>2</td>
				<td>20000</td>
				<td>40000</td>
			</tr>
			<tr>
				<td colspan="4">Tổng tiền</td>
				<td>40000</td>
			</tr>
		</table>
		<%
			} else {
		%>
		<p>Không có danh sách hoa</p>
		<%
			}
		%>

	</div>
</body>
</html>