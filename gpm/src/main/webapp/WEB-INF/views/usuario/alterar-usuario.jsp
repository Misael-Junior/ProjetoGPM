<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-br">
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>CRUD com Bootstrap 3</title>
	
	<!-- CSS -->
	<link href="<c:url value='../resources/css/bootstrap.min.css' />" rel="stylesheet"></link>
	<link href="<c:url value='../resources/css/style.css' />" rel="stylesheet"></link>
	
	</head>
	<body>
	
		<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Web Dev Academy</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">In&iacute;cio</a></li>
					<li><a href="#">Op&ccedil;&otilde;es</a></li>
					<li><a href="#">Perfil</a></li>
					<li><a href="#">Ajuda</a></li>
				</ul>
			</div>
		</div>
		</nav>
	
		<div id="main" class="container-fluid">
	
			<h3 class="page-header">Editar Item</h3>
	
			<form action="index.html">
				<div class="row">
					<div class="form-group col-md-4">
						<label for="exampleInputEmail1">Campo Um</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-4">
						<label for="exampleInputEmail1">Campo Dois</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-4">
						<label for="exampleInputEmail1">Campo Três</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							placeholder="Digite o valor">
					</div>
				</div>
	
				<div class="row">
					<div class="form-group col-md-3">
						<label for="exampleInputEmail1">Campo Quatro</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-3">
						<label for="exampleInputEmail1">Campo Cinco</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-3">
						<label for="exampleInputEmail1">Campo Seis</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-3">
						<label for="exampleInputEmail1">Campo Sete</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							placeholder="Digite o valor">
					</div>
				</div>
	
				<div class="row">
					<div class="form-group col-md-6">
						<label for="exampleInputEmail1">Campo Oito</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-6">
						<label for="exampleInputEmail1">Campo Nove</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							placeholder="Digite o valor">
					</div>
				</div>
	
				<div class="row">
					<div class="form-group col-md-3">
						<label for="exampleInputEmail1">Campo Dez</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-3">
						<label for="exampleInputEmail1">Campo Onze</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-3">
						<label for="exampleInputEmail1">Campo Doze</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-3">
						<label for="exampleInputEmail1">Campo Treza</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							placeholder="Digite o valor">
					</div>
				</div>
	
				<div class="row">
					<div class="form-group col-md-6">
						<label for="exampleInputEmail1">Campo Quatorze</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-6">
						<label for="exampleInputEmail1">Campo Quinze</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							placeholder="Digite o valor">
					</div>
				</div>
	
				<hr />
	
				<div class="row">
					<div class="col-md-12">
						<button type="submit" class="btn btn-primary">Atualizar</button>
						<a href="template.html" class="btn btn-default">Cancelar</a>
					</div>
				</div>
	
			</form>
		</div>
	
		<!-- AngularJS e JS -->
		<script src="<c:url value='../resources/js/angular.min.js' />"></script>
		<script src="<c:url value='../resources/controller/UsuarioController.js' />"></script>
		<script src="<c:url value='../resources/js/jquery-3.2.1.min.js' />"></script>
		<script src="<c:url value='../resources/js/bootstrap.min.js' />"></script>
		<script src="<c:url value='../resources/js/validador.js' />"></script>
		<script src="<c:url value='../resources/js/validador.min.js' />"></script>
	</body>
</html>