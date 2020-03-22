<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>
<%@page import="Get.Pessoas"%>
<%@page import="Get.Carros"%>
<%@page import="Get.Locacao"%>
<%@page import="Get.Devolver"%>
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
<title>Locação</title>
</head>
<body bgcolor="Silver">

	<br />
	<center>
		<%
			List<Pessoas> pessoas;
			pessoas = (ArrayList<Pessoas>) session.getAttribute("pessoas");
		%>
		<%
			List<Carros> carros;
			carros = (ArrayList<Carros>) session.getAttribute("carros");
		%>
			
		<!-- Cada locação possui um usuário, um carro, uma data de locação, 
		uma data estimada de devolução, uma data de devolução, um valor cobrado, 
		valor pago, e um valor de multa (25% de acréscimo no valor diário de locação para cada dia que passar da data
		estimada de devolução)-->
		
			
		<form action="LocacaoCRUD.jsp" method="GET">
		
				<br />
							
				<br /><br>
				Selecione o Cliente: 
				<select id="pes" name="pessoas">
				<% for (Pessoas p : pessoas){ 
					out.print("<option value=\""+p.getNamePes()+"\" >"+p.getNamePes()+"</option>");
				} %>
				</select>
				
				<br /><br>
				Selecione o Carro: 
				<select id="car" name="carros">
				<% for (Carros c : carros){ 
					out.print("<option value=\""+c.getNome()+"\" >"+c.getNome()+"</option>");
				} %>
				</select>
					<br /><br />
				
				Código: <input type="String" name="Cod"><br /> <br />	
				Data Locação: <input type="String" name="dtLoc"><br /> <br />
				Data Est. Devolução: <input type="String" name="dtEst"><br /> <br />
				Valor Locação: <input type="String" name="ValorLoc"><br /> <br />
				
				
				<input type="submit" value="Adicionar" /><br><br>
		</form>
		
		<%
			List <Locacao> locacao;
			if (session.getAttribute("locacao")== null){
				locacao = new ArrayList<Locacao>();
				session.setAttribute("locacao", locacao);
			}else
				locacao = (ArrayList)session.getAttribute("locacao");
		%>
		
		Carros Que Foram Emprestados<br /><br />
	</center>
	<br />
		<table style="width:100%">
			  <tr>
			    <th>Locação</th>
			    <th>Estimativa</th> 
			    <th>Carro</th>
			    <th>Pessoa</th>
			    <th>Valor da Locação</th>
			  </tr>
					<% for (Locacao l : locacao){ 
						out.print("<tr>");
						out.print("<td>"+l.getDtLoc()+"</td>");
						out.print("<td>"+l.getDtEst()+"</td>");
						out.print("<td>"+l.getCarros()+"</td>");
						out.print("<td>"+l.getPessoas()+"</td>");
						out.print("<td>"+l.getValorLoc()+"</td>");
						out.print("</tr>");
					} %>
			</table>
			</br>
			</br>
			<center><a href="Devolver.jsp"><h4>Devolver Carro</h4></a></center>
			
			<%
				List <Devolver> devolver;
				if (session.getAttribute("devolver")== null){
					devolver = new ArrayList<Devolver>();
					session.setAttribute("devolver", devolver);
				}else
					devolver = (ArrayList)session.getAttribute("devolver");
			%>
			
			<br />
		<table style="width:100%">
			  <tr>
			    <th>Código</th>
			    <th>Devolução</th> 
			    <th>Pagamento</th>
			    <th>Multa</th>
			  </tr>
					<% for (Devolver d : devolver){ 
						out.print("<tr>");
						out.print("<td>"+d.getCod()+"</td>");
						out.print("<td>"+d.getDtDev()+"</td>");
						out.print("<td>"+d.getVlPag()+"</td>");
						out.print("<td>0</td>");
						out.print("</tr>");
					} %>
			</table>
	
</body>
</html>