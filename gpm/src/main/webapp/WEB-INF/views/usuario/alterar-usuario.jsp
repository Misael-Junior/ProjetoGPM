<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html ng-app="UsuarioControllerApp" >
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<title>GPM | EDITAR CADASTRO DE USUÁRIO</title>
		
		<!-- CSS -->
		<link href="<c:url value='/resources/css/bootstrap.min.css' />" rel="stylesheet"></link>
		<link href="<c:url value='/resources/css/style.css' />" rel="stylesheet"></link> 
	
	</head>
	
	<body>
	
		<header>	
			<!-- Topo da Página e MENU -->
			<nav class="navbar navbar-inverse navbar-fixed-top">
		  		<div class="container-fluid">
				   	<div class="navbar-header">
				    	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						     <span class="sr-only">Toggle navigation</span>
						     <span class="icon-bar"></span>
						     <span class="icon-bar"></span>
						     <span class="icon-bar"></span>
				    	</button>
				    	<a class="navbar-brand" href="#">Gerenciador Parque Máquinas</a>
				   	</div>
				   	<div id="navbar" class="navbar-collapse collapse">
					    <ul class="nav navbar-nav navbar-right">
						     <li><a href="/gpm/painel">Início</a></li>
						     <li><a href="../listar">Usuário</a></li>
						     <li><a href="../computador/listar">Computador</a></li>
						     <li><a href="../monitor/listar">Monitor</a></li>
						     <li><a href="../impressora/listar">Impressora</a></li>
			    		</ul>
				   	</div>
		  		</div>
	 		</nav>
			
		</header>	

		<section>
			<!-- Painel -->
			<div class="panel panel-computador panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title panel-title-computador">Editar Cadastro de
						Usuário</h3>
				</div>
				
				<!-- Formulário -->
				<form class="form-horizontal" ng-controller="UsuarioController">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="form-group">
								<label for="nome" class="col-sm-2 control-label">Codigo
								*</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" id="id" name="id"
										placeholder="Código do Usuário" required="required"
										autofocus="autofocus" ng-model="id" readonly="readonly"  ng-init="id='${usuario.id}'"/>
								</div>
							</div>
							<div class="form-group">
								<label for="nome" class="col-sm-2 control-label">Nome
									Completo*</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="nome" name="nome"
										placeholder="Nome Completo do Usuário" required="required"
										autofocus="autofocus" ng-model="nome" ng-init="nome='${usuario.nome}'"/>
								</div>
								<label for="setor" class="col-sm-2 control-label">Email*</label>
								<div class="col-sm-3">
									<input type="email" class="form-control" id="email" name="email"
										placeholder="Email do Usuário" required="required"
										autofocus="autofocus" ng-model="email" ng-init="email='${usuario.email}'"/>
								</div>
							</div>
							<span class='msg-erro msg-nome'></span>
							
							<span class='msg-erro msg-email'></span>
							<div class="form-group">
								<label for="ip" class="col-sm-2 control-label">Senha*</label>
								<div class="col-sm-3">
									<input type="password" class="form-control" id="senha"
										name="senha" placeholder="Senha do Usuário" required="required"
										autofocus="autofocus" ng-model="senha" ng-init="senha='${usuario.senha}'"/>
								</div>
								<label for="ip" class="col-sm-2 control-label">Repetir
									Senha*</label>
								<div class="col-sm-3">
									<input type="password" class="form-control" id="rsenha"
										name="rsenha" placeholder="Senha do Usuário"
										required="required" autofocus="autofocus" ng-model="rsenha" ng-init="rsenha='${usuario.senha}'"/>
									</div>
							</div>
							<span class='msg-erro msg-senha'></span>
							
							<span class='msg-erro msg-rsenha'></span>
							<div class="form-group">
								<label for="ramal" class="col-sm-2 control-label">Telefone</label>
								<div class="col-sm-3">
									<input type="telefone" class="form-control" id="telefone"
										name="telefone" placeholder="Telefone do Usuário"
										required="required" autofocus="autofocus" ng-model="telefone" ng-init="telefone='${usuario.telefone}'"/>
								</div>
								<label for="status" class="col-sm-2 control-label">Perfil*</label>
								<div class="col-sm-3">
									<select class="form-control" name="perfil" id="perfil" ng-model="perfil" ng-init="perfil='${usuario.perfil}'">
										<option valeu="padrao">Padrão</option>
										<option valeu="admin">Admin</option>
									</select>
								</div>
							</div>
							<span class='msg-erro msg-telefone'></span>
							
							<span class='msg-erro msg-perfil'></span>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="button" class="btn btn-primary" ng-click="alterarUsuario()">Alterar Cadastro</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</section>
			
		<!-- AngularJS e JS -->
		<script src="<c:url value='/resources/js/angular.min.js' />"></script>
		<script src="<c:url value='/resources/controller/UsuarioController.js' />"></script>
		<script src="<c:url value='/resources/js/jquery-3.2.1.min.js' />"></script>
		<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>
			 
	</body>

</html>
