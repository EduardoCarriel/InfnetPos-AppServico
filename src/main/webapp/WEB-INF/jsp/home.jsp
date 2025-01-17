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
	  <h2>${projeto.nome}</h2>
	  <p>${projeto.descricao}</p>
	  
	  <c:forEach var="c" items="${projeto.classes}">
		  <h3>Classe: ${c.nome}</h3>	              
		  <table class="table table-bordered">
		    <thead>
		      <tr>
		        <th>Atributo</th>
		        <th>Tipo</th>
		        <th>Descri��o</th>
		      </tr>
		    </thead>
		    <tbody>
	    	  <c:forEach var="a" items="${c.atributos}">
		        <tr>
		          <td>${a.nome}</td>
		          <td>${a.tipo}</td>
		          <td>${a.descricao}</td>
		        </tr>
	      	  </c:forEach>
		    </tbody>
		  </table>
	  </c:forEach>
	</div>	
</body>
</html>