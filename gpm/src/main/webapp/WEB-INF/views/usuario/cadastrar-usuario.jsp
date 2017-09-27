<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html ng-app="UsuarioControllerApp" >
	<head>
	<meta charset="utf-8" />
	<title>GPM | CADASTRO DE USU�RIO</title>
	
	<!-- CSS -->
	<link href="<c:url value='../resources/css/bootstrap.min.css' />" rel="stylesheet"></link>
	<link href="<c:url value='../resources/css/style.css' />" rel="stylesheet"></link>
	
	</head>
	<body>
		<header>	
			<!-- Topo da P�gina e MENU -->
			<nav class="navbar navbar-inverse navbar-fixed-top">
		  		<div class="container-fluid">
				   	<div class="navbar-header">
				    	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						     <span class="sr-only">Toggle navigation</span>
						     <span class="icon-bar"></span>
						     <span class="icon-bar"></span>
						     <span class="icon-bar"></span>
				    	</button>
				    	<a class="navbar-brand" href="#">Gerenciador Parque M�quinas</a>
				   	</div>
				   	<div id="navbar" class="navbar-collapse collapse">
					    <ul class="nav navbar-nav navbar-right">
						     <li><a href="../index">In�cio</a></li>
						     <li><a href="#">Usu�rio</a></li>
						     <li><a href="#">Computador</a></li>
						     <li><a href="#">Impressora</a></li>
			    		</ul>
				   	</div>
		  		</div>
	 		</nav>
			
		</header>	

		<section>
			<!-- Painel -->
			<div class="panel panel-computador panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title panel-title-computador">Cadastro de
						Usu�rio</h3>
				</div>
				
				<!-- Formul�rio -->
				<form class="form-horizontal" ng-controller="UsuarioController">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="form-group">
								<label for="nome" class="col-sm-2 control-label">Nome
									Completo*</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="nome" name="nome"
										placeholder="Nome Completo do Usu�rio" required="required"
										autofocus="autofocus" ng-model="nome" ng-minlength="4" ng-maxlength="10"/>
								</div>
							</div>
							<span class='msg-erro msg-nome'></span>
							<div class="form-group">
								<label for="setor" class="col-sm-2 control-label">Email*</label>
								<div class="col-sm-4">
									<input type="email" class="form-control" id="email" name="email"
										placeholder="Email do Usu�rio" required="required"
										autofocus="autofocus" ng-model="email"/>
								</div>
							</div>
							<span class='msg-erro msg-email'></span>
							<div class="form-group">
								<label for="ip" class="col-sm-2 control-label">Senha*</label>
								<div class="col-sm-3">
									<input type="password" class="form-control" id="senha"
										name="senha" placeholder="Senha do Usu�rio" required="required"
										autofocus="autofocus" ng-model="senha"/>
								</div>
							</div>
							<span class='msg-erro msg-senha'></span>
							<div class="form-group">
								<label for="ip" class="col-sm-2 control-label">Repetir
									Senha*</label>
								<div class="col-sm-3">
									<input type="password" class="form-control" id="repetir-senha"
										name="repetir-senha" placeholder="Senha do Usu�rio"
										required="required" autofocus="autofocus" ng-model="rsenha" />
									</div>
							</div>
							<span class='msg-erro msg-rsenha'></span>
							<div class="form-group">
								<label for="ramal" class="col-sm-2 control-label">Telefone</label>
								<div class="col-sm-3">
									<input type="telefone" class="form-control" id="telefone"
										name="telefone" placeholder="Telefone do Usu�rio"
										required="required" autofocus="autofocus" ng-model="telefone"/>
								</div>
							</div>
							<span class='msg-erro msg-telefone'></span>
							<div class="form-group">
								<label for="status" class="col-sm-2 control-label">Perfil*</label>
								<div class="col-sm-2">
									<select class="form-control" name="perfil" id="perfil" ng-model="perfil">
										<option valeu="padrao" ng-selected="true">Padr�o</option>
										<option valeu="admin">Admin</option>
									</select>
								</div>
							</div>
							<span class='msg-erro msg-perfil'></span>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="button" class="btn btn-primary" ng-click="cadastrarUsuario()">Cadastrar</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</section>		
		
		<!-- AngularJS e JS -->
		<script src="<c:url value='../resources/js/angular.min.js' />"></script>
		<script src="<c:url value='../resources/controller/UsuarioController.js' />"></script>
		<script src="<c:url value='../resources/js/jquery-3.2.1.min.js' />"></script>
		<script src="<c:url value='../resources/js/bootstrap.min.js' />"></script>
		<script src="<c:url value='../resources/js/validador.js' />"></script>
		<script src="<c:url value='../resources/js/validador.min.js' />"></script>
			 
	</body>
</html>
