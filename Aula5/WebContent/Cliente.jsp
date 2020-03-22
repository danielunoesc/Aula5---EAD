<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>
<%@page import="Get.Pessoas"%>
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
<title>Cadastro de Pessoas</title>
</head>
<body bgcolor="Silver">

	<form action="ClientesCRUD.jsp" method="GET">
	
	<!-- Nome, Sobrenome,
		CNH (número e categoria), data de nascimento, Telefone (DDD e Numero), e-mail,
		Endereço (Rua, Complemento, CEP, Cidade, Estado) -->

		<br />
		<center>
			Nome: <input type="text" name="NamePes"><br /> <br />
			Sobrenome: <input type="text" name="SobrePes"><br /> <br />
			Nasc: <input type="text" name="NascPes"><br /> <br />
			CNH - Numero - Categoria: <input type="text" name="CnhPes"><br /> <br />
			Telefone - DDD: <input size ="1" width="1" type="text" name="DDDPes">
			Numero: <input type="text" name="NumPes"><br /> <br /> 
			E-mail: <input type="text" name="EmailPes"><br /> <br /> 
			Endereço: <input type="text" name="EndPes"><br /> <br /> 
			Cidade: <input type="text" name="CidPes">
			UF: <input size ="1" width="1" type="text" name="UfPes"><br /> <br /> 
			
			<input type="submit" value="Adicionar" /><br><br>
			<a href="Index.jsp"><h3>Voltar</h3></a>
		</center>
		
		
	</form>
	
	<% int j = 0; %>
    <% String var = "String"; %>
	<%
		List<Pessoas> pessoas;
		if (session.getAttribute("pessoas") == null) {
			pessoas = new ArrayList<Pessoas>();
			session.setAttribute("pessoas", pessoas);
		} else
			pessoas = (ArrayList<Pessoas>) session.getAttribute("pessoas");
	%>
	
		<table style="width:100%">
		  <tr>
				<th>Nome</th>
				<th>Sobrenome</th> 
				<th>Nascimento</th> 
				<th>CNH</th>
				<th>DDD</th>
				<th>Numero Tel</th>
				<th>E-mail</th>
				<th>Endereço</th>
				<th>Cidade</th>
				<th>UF</th>
		  </tr>
				<% for (Pessoas p : pessoas){ 
					out.print("<tr>");
					out.print("<td>"+p.getNamePes()+"</td>");
					out.print("<td>"+p.getSobrePes()+"</td>");
					out.print("<td>"+p.getNascPes()+"</td>");
					out.print("<td>"+p.getCnhPes()+"</td>");
					out.print("<td>"+p.getDDDPes()+"</td>");
					out.print("<td>"+p.getNumPes()+"</td>");
					out.print("<td>"+p.getEmailPes()+"</td>");
					out.print("<td>"+p.getEndPes()+"</td>");
					out.print("<td>"+p.getCidPes()+"</td>");
					out.print("<td>"+p.getUfPes()+"</td>");
					out.print("</tr>");
				} %>
		</table>
	
</body>
</html>