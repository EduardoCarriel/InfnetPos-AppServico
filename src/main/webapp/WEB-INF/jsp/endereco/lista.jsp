<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<meta charset="ISO-8859-1">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<title>AppProfissional</title>
</head>
<body>
	<c:import url="/WEB-INF/jsp/menu.jsp"/>

	<div class="container mt-3">
	  <h2>AppProfissional</h2>
	  <p>Projeto de cadastro de servi�os</p>
	  
	  <h3>Classe: Endereco</h3>	
	  
	  <h4><a href="/endereco">Novo</a></h4>
	  
	  <table class="table table-bordered">
	    <thead>
	      <tr>
	      	<th>ID</th>
	        <th>Cep</th>
	        <th>Logradouro</th>
	        <th>N�mero</th>
	        <th>Bairro</th>
	        <th>Cidade</th>
	        <th>Estado</th>
	        <th>Usuario</th>
	        <th></th>
	      </tr>
	    </thead>
	    <tbody>
		    <c:forEach var="i" items="${listagem}">
		      <tr>
		      	<td>${i.id}</td>
		        <td>${i.cep}</td>
		        <td>${i.logradouro}</td>
		        <td>${i.numero}</td>
		        <td>${i.bairro}</td>
		        <td>${i.cidade}</td>
		        <td>${i.estado}</td>
		        <td>${i.usuario}</td>
		        <td><a href="/endereco/${i.id}/excluir">excluir</a></td>
		      </tr>
		      </c:forEach>
	    </tbody>
	  </table>
	</div>	
</body>
</html>