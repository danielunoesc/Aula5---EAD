<%@page import="java.util.*"%>
<%@page import="Get.Locacao"%>
<%@page import="Get.Carros"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Locação</title>
</head>
<body bgcolor="Silver">
	<center><br>
		<% if (request.getParameter("Cod")!= null) {
			out.print("Código: " + request.getParameter("Cod") + "</p>");
		 }%>
		<% if (request.getParameter("dtLoc")!= null) {
				out.print("Data Locação: " + request.getParameter("dtLoc") + "</p>");
			}%>
		<% if (request.getParameter("dtEst")!= null) {
			out.print("<p>Estimativa Dev: " + request.getParameter("dtEst") + "</p>");
			}%>
		<% if (request.getParameter("carros")!= null) {
			out.print("<p>Carro: " + request.getParameter("carros") + "</p>");
		}%>
		<% if (request.getParameter("pessoas")!= null) {
			out.print("<p>Pessoa: " + request.getParameter("pessoas") + "</p>");
		}%>
		<% if (request.getParameter("ValorLoc")!= null) {
			out.print("<p>Valor Locação: " + request.getParameter("ValorLoc") + "</p>");
		}%>	
	
		
		<%		
			Locacao l = new Locacao();
			l.setCod(request.getParameter("Cod"));
			l.setDtLoc(request.getParameter("dtLoc"));
			l.setDtEst(request.getParameter("dtEst"));
			l.setCarros(request.getParameter("carros"));
			l.setPessoas(request.getParameter("pessoas"));
			l.setValorLoc(request.getParameter("ValorLoc"));
			
			
			
			List <Locacao> locacao;
			if (session.getAttribute("locacao")== null){
				locacao = new ArrayList<Locacao>();
				session.setAttribute("locacao", locacao);
			}else
				locacao = (ArrayList)session.getAttribute("locacao");
			
			locacao.add(l);
			
		%>
		
		<a href="Locacao.jsp"><h3>Voltar</h3></a><br><br>
		</center>	
		
</body>
</html>