<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<h1>Liste des pays</h1>
	<table id="countryTable">
		<thead>
			<tr>
				<th>ID pays</th>
				<th>Nom pays</th>
				<th>Numero d'urgence</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${countryList}" var="country">
				<tr>
					<td>${country.countryID}</td>
					<td>${country.countryName}</td>
					<td>${country.emergencyNumber}</td>
				</tr>
			</c:forEach>
			<script type="text/javascript">
				$("#countryTable").DataTable();
			</script>
		</tbody>
	</table>
</body>
</html>