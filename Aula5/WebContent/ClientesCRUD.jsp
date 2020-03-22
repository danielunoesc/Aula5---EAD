<%@page import="java.util.*"%>
<%@page import="Get.Pessoas"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carros</title>
</head>
<body>
	<center><br>
	<% if (request.getParameter("NamePes")!= null) {
			out.print("Nome: " + request.getParameter("NamePes") + "</p>");
		 }%>
		<% if (request.getParameter("SobrePes")!= null) {
			out.print("<p>Sobrenome: " + request.getParameter("SobrePes") + "</p>");
			}%>
		<% if (request.getParameter("NascPes")!= null) {
			out.print("<p>Nascimento: " + request.getParameter("NascPes") + "</p>");
			}%>
		<% if (request.getParameter("CnhPes")!= null) {
			out.print("<p>CNH: " + request.getParameter("CnhPes") + "</p>");
		}%>
		<% if (request.getParameter("DDDPes")!= null) {
			out.print("<p>DDD: " + request.getParameter("DDDPes") + "</p>");
		}%>
		<% if (request.getParameter("NumPes")!= null) {
			out.print("<p>Numero: " + request.getParameter("NumPes") + "</p>");
		}%>
		<% if (request.getParameter("EmailPes")!= null) {
			out.print("<p>E-Mail: " + request.getParameter("EmailPes") + "</p>");
		}%>
		<% if (request.getParameter("EndPes")!= null) {
			out.print("<p>Endereço: " + request.getParameter("EndPes") + "</p>");
		}%>
		<% if (request.getParameter("CidPes")!= null) {
			out.print("<p>Cidade: " + request.getParameter("CidPes") + "</p>");
		}%>
		<% if (request.getParameter("UfPes")!= null) {
			out.print("<p>UF: " + request.getParameter("UfPes") + "</p>");
		}%>
		
	
		
		<%
			Pessoas p = new Pessoas();
			p.setNamePes(request.getParameter("NamePes"));
			p.setSobrePes(request.getParameter("SobrePes"));
			p.setNascPes(request.getParameter("NascPes"));
			p.setCnhPes(request.getParameter("CnhPes"));
			p.setDDDPes(request.getParameter("DDDPes"));
			p.setNumPes(request.getParameter("NumPes"));
			p.setEmailPes(request.getParameter("EmailPes"));
			p.setEndPes(request.getParameter("EndPes"));
			p.setCidPes(request.getParameter("CidPes"));
			p.setUfPes(request.getParameter("UfPes"));
			
			List <Pessoas> pessoas;
			if (session.getAttribute("pessoas")== null){
				pessoas = new ArrayList<Pessoas>();
				session.setAttribute("pessoas", pessoas);
			}else
				pessoas = (ArrayList)session.getAttribute("pessoas");
			
			pessoas.add(p);
			
		%>
		
		<a href="Cliente.jsp"><h3>Voltar</h3></a><br><br>
		</center>	
		
</body>
</html>