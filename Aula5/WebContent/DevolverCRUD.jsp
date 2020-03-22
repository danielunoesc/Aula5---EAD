<%@page import="java.util.*"%>
<%@page import="Get.Devolver"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="Silver">
	<center><br>
		<% if (request.getParameter("Cod")!= null) {
			out.print("Código: " + request.getParameter("Cod") + "</p>");
		 }%>
		<% if (request.getParameter("dtDev")!= null) {
				out.print("Data Devolução: " + request.getParameter("dtDev") + "</p>");
			}%>
		<% if (request.getParameter("VlPag")!= null) {
			out.print("<p>Pagamento: " + request.getParameter("VlPag") + "</p>");
			}%>	
			
			
		<%		
			Devolver d = new Devolver();
			d.setCod(request.getParameter("Cod"));
			d.setDtDev(request.getParameter("dtDev"));
			d.setVlPag(request.getParameter("VlPag"));
			d.setVlMul("0");
			
			List <Devolver> devolver;
			if (session.getAttribute("devolver")== null){
				devolver = new ArrayList<Devolver>();
				session.setAttribute("devolver", devolver);
			}else
				devolver = (ArrayList)session.getAttribute("devolver");
			
			devolver.add(d);
			
		%>
		
		<a href="Locacao.jsp"><h3>Voltar</h3></a><br><br>
	</center>

</body>
</html>