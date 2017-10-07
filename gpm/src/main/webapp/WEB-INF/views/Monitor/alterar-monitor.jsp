<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html ng-app="UsuarioControllerApp" >
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<title>GPM | EDITAR CADASTRO DE MONITOR</title>
		
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
						     <li><a href="#">Início</a></li>
						     <li><a href="../listar">Usuário</a></li>
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
					<h3 class="panel-title panel-title-computador">Editar Cadastro de
						Monitor</h3>
				</div>
				
				<!-- Formulário -->
				<form class="form-horizontal" ng-controller="UsuarioController">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="form-group">
								<label for="codigo" class="col-sm-2 control-label">Codigo
								*</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" id="id" name="id"
										placeholder="Código do Monitor" required="required"
										autofocus="autofocus" ng-model="id" readonly="readonly"  ng-init="id='${monitor.id}'"/>
								</div>
							</div>
							<div class="form-group">
									<label for="marca" class="col-sm-2 control-label">Marca*</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="marca" name="marca"
										placeholder="Marca do monitor"
										autofocus="autofocus" ng-model="marca" required />
										<p ng-show="userForm.marca.$invalid && !userForm.marca.$pristine" class="help-block">Marca é Obrigatória</p>
										
										
								</div>
								<label for="modelo" class="col-sm-2 control-label">Modelo*</label>
								<div class="col-sm-3" ng-class="{ 'has-error' : userForm.modelo.$invalid && !userForm.modelo.$pristine }">
									<input type="modelo" class="form-control" id="modelo" name="modelo"
										placeholder="Modelo do monitor" required="required"
										autofocus="autofocus" ng-model="modelo" required/>
										<p ng-show="userForm.modelo.$invalid && !userForm.modelo.$pristine" class="help-block">Informe o modelo do monitor.</p>
								</div>
							</div>

							<div class="form-group" ng-class="{ 'has-error' : userForm.tomb.$invalid && !userForm.tomb.$pristine }" >
								<label for="tomb" class="col-sm-2 control-label">Tombamento*</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="tomb"
										name="tomb" placeholder="Tombamento(Patrimônio)" required
										autofocus="autofocus" ng-model="tomb"/>
										<p ng-show="userForm.tomb.$invalid && !userForm.tomb.$pristine" class="help-block">Informe o número do tombamento.</p>
								</div>
								<label for="descricao" class="col-sm-2 control-label">Descrição*</label>
								<div class="col-sm-3" ng-class="{ 'has-error' : userForm.descricao.$invalid && !userForm.descricao.$pristine }">
									<input type="text" class="form-control" id="descricao"
										name="descricao" placeholder="Escreva uma descrição"
										required autofocus="autofocus" ng-model="descricao" />
										<p ng-show="userForm.descricao.$invalid && !userForm.descricao.$pristine" class="help-block">Informe uma descrição</p>
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
