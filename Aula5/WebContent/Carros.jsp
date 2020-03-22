<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>
<%@page import="Get.Carros"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
<meta charset="ISO-8859-1">
<title>Cadastro de Carros</title>
</head>
<body bgcolor="Silver">

	<form action="CarrosCRUD.jsp" method="GET">

		<br />
		<center>
			Codigo: <input type="text" name="Codcar"><br /> <br />
			Nome: <input type="text" name="NameCar"><br /> <br />
			Preco: <input type="text" name="VlCar"><br /> <br />
			Locacao: <input type="text" name="LocCar"><br /> <br /> 
			
			<select
				id="Marca" name="MarCar">
				<option value="fiat">Fiat</option>
			</select> 
			
			<select id="Modelo" name="ModCar">
				<option value="Sedan">Sedan</option>
			</select> <br> <br> 
			<input type="submit" value="Adicionar" /><br><br>
			<a href="Index.jsp"><h3>Voltar</h3></a>
		</center>
		
		
	</form>
	
	<% int j = 0; %>
    <% String var = "String"; %>
	<%
		List<Carros> carros;
		if (session.getAttribute("carros") == null) {
			carros = new ArrayList<Carros>();
			carros.clear();
			session.setAttribute("carros", carros);
		} else
			carros = (ArrayList<Carros>) session.getAttribute("carros");
	%>
	
		<table style="width:100%">
		  <tr>
		    <th>Codigo</th>
		    <th>Nome</th> 
		    <th>Preco</th>
		    <th>Locação</th>
		    <th>Marca</th>
		    <th>Modelo</th>
		  </tr>
				<% for (Carros c : carros){ 
					out.print("<tr>");
					out.print("<td>"+c.getCodcar()+"</td>");
					out.print("<td>"+c.getNome()+"</td>");
					out.print("<td>"+c.getVlCar()+"</td>");
					out.print("<td>"+c.getLocCar()+"</td>");
					out.print("<td>"+c.getMarCar()+"</td>");
					out.print("<td>"+c.getModCar()+"</td>");
					out.print("</tr>");
				} %>
		</table>
	
</body>
</html>