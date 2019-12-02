<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.edu.unicid.bean.Aluno"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Lista Alunos</title>
	</head>

	<body>
		<center>
			<table width="100%" border="1" cellpadding="2" cellspacing="0">
				<tr style="border-botton: none;">
					<th colspan="8"><h2>Lista de Alunos</h2></th>
				</tr>
				
				<tr>
					<th colspan="8" style="text-align: right;">
						<a href="incluir.jsp"><img src="./icon/iconfinder_General_Office_35_3592854.png" style="width: 35px; padding-right: 10px;"></a>
						<a href="consultar.jsp"><img src="./icon/search-512.png" style="width: 35px; padding-right: 10px;"></a>
					</th>
				</tr>
					
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>Foto</th>
					<th>Nascimento</th>
					<th>Idade</th>
					<th>Endereço</th>
					<th>Alterar</th>
					<th>Excluir</th>
				</tr>
				<%
					SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
					List<Aluno> lista = new ArrayList<Aluno>();
					lista = (ArrayList) request.getAttribute("alunosList");
					for (Aluno a : lista) {
				%>
				<tr>
					<td><%=a.getCaAluno()%></td>
					<td><%=a.getNomeAluno()%></td>
					<td style="text-align: center;"><img src="<%=a.getEmailAluno()%>" style="width: 60px;""></td>
					<td><%=data.format(a.getDtaNasc())%></td>
					<td><%=a.getIdadeAluno()%></td>
					<td><%=a.getEndAluno()%></td>					
					<td style="text-align: center;"><a href="ServletAlunos?cmd=atu&txtCa=<%=a.getCaAluno()%>"><img src="./icon/iconfinder_General_Office_10_3592815.png" style="width: 20px; position: center;"></a></td>
					<td style="text-align: center;"><a href="ServletAlunos?cmd=exc&txtCa=<%=a.getCaAluno()%>"><img src="./icon/iconfinder_General_Office_24_3592821.png" style="width: 20px;"></a></td>
				</tr>
				<%
					}
				%>				
			</table>
		</center>
	</body>
</html>