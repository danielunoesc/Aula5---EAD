<%@page import="java.util.*"%>
<%@page import="Get.Locacao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Devolução</title>
</head>
<body bgcolor="Silver">

	<br />
	<center>
		<%
			List<Locacao> locacao;
			locacao = (ArrayList<Locacao>) session.getAttribute("locacao");
		%>
		
		<form action="DevolverCRUD.jsp" method="GET">
		
				<br />
							
				<br /><br>
				Código da Locação: 
				<select id="cod" name="Cod">
				<% for (Locacao l : locacao){ 
					out.print("<option value=\""+l.getCod()+"\" >"+l.getCod()+"</option>");
				} %>
				</select> <br/><br/>
				Data Devolução: <input type="String" name="dtDev"><br /> <br />
				Valor Pagamento: <input type="String" name="VlPag"><br /> <br />
				
				
				<input type="submit" value="Adicionar" /><br><br>
		</form>
		
		
	</center>

</body>
</html>