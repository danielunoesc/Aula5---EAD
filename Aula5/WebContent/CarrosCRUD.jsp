<%@page import="java.util.*"%>
<%@page import="Get.Carros"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carros</title>
</head>
<body bgcolor="Silver">
	<center><br>
	<% if (request.getParameter("Codcar")!= null) {
			out.print("Codigo: " + request.getParameter("Codcar") + "</p>");
		 }%>
		<% if (request.getParameter("NameCar")!= null) {
			out.print("<p>Nome: " + request.getParameter("NameCar") + "</p>");
			}%>
		<% if (request.getParameter("VlCar")!= null) {
			out.print("<p>Preço: " + request.getParameter("VlCar") + "</p>");
			}%>
		<% if (request.getParameter("LocCar")!= null) {
			out.print("<p>Locação: " + request.getParameter("LocCar") + "</p>");
		}%>
		<% if (request.getParameter("MarCar")!= null) {
			out.print("<p>Marca: Fiat </p>");
		}%>
		<% if (request.getParameter("ModCar")!= null) {
			out.print("<p>Modelo: Sedan </p>");
		}%>
	
	
		
		<%
			Carros c = new Carros();
			c.setCodcar(request.getParameter("Codcar"));
			c.setNome(request.getParameter("NameCar"));
			c.setVlCar(request.getParameter("VlCar"));
			c.setLocCar(request.getParameter("LocCar"));
			c.setModCar(request.getParameter("ModCar"));
			c.setMarCar(request.getParameter("MarCar"));
			
			
			List <Carros> carros;
			if (session.getAttribute("carros")== null){
				carros = new ArrayList<Carros>();
				session.setAttribute("carros", carros);
			}else
				carros = (ArrayList)session.getAttribute("carros");
			
			carros.add(c);
			
		%>
		
		<a href="Carros.jsp"><h3>Voltar</h3></a><br><br>
		</center>	
		
</body>
</html>