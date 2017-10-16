<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html ng-app="MonitorControllerApp" >
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
					<h3 class="panel-title panel-title-computador">Visualizar Cadastro de
						Monitor</h3>
				</div>
				
				<!-- Formulário -->
				<form class="form-horizontal" ng-controller="MonitorController">
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
										autofocus="autofocus" ng-model="marca"  readonly="readonly" required ng-init="marca='${monitor.marca}'"/>
										<p ng-show="userForm.marca.$invalid && !userForm.marca.$pristine" class="help-block">Marca é Obrigatória</p>
										
										
								</div>
								<label for="modelo" class="col-sm-2 control-label">Modelo*</label>
								<div class="col-sm-3" ng-class="{ 'has-error' : userForm.modelo.$invalid && !userForm.modelo.$pristine }">
									<input type="modelo" class="form-control" id="modelo" name="modelo"
										placeholder="Modelo do monitor" required="required"
										autofocus="autofocus" ng-model="modelo"  readonly="readonly" required ng-init="modelo='${monitor.modelo}'"/>
										<p ng-show="userForm.modelo.$invalid && !userForm.modelo.$pristine" class="help-block">Informe o modelo do monitor.</p>
								</div>
							</div>

							<div class="form-group" ng-class="{ 'has-error' : userForm.tomb.$invalid && !userForm.tomb.$pristine }" >
								<label for="tomb" class="col-sm-2 control-label">Tombamento*</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="montomb"
										name="montomb" placeholder="Tombamento(Patrimônio)" required
										autofocus="autofocus" ng-model="montomb"  readonly="readonly" ng-init="montomb='${monitor.montomb}'"/>
										<p ng-show="userForm.montomb.$invalid && !userForm.montomb.$pristine" class="help-block">Informe o número do tombamento.</p>
								</div>
								<label for="descricao" class="col-sm-2 control-label">Descrição*</label>
								<div class="col-sm-3" ng-class="{ 'has-error' : userForm.descricao.$invalid && !userForm.descricao.$pristine }">
									<input type="text" class="form-control" id="descricao"
										name="descricao" placeholder="Escreva uma descrição"
										required autofocus="autofocus" ng-model="descricao"  readonly="readonly"  ng-init="descricao='${monitor.descricao}'" />
										<p ng-show="userForm.descricao.$invalid && !userForm.descricao.$pristine" class="help-block">Informe uma descrição</p>
									</div>
							</div>
							
						</div>
					</div>
				</form>
			</div>
		</section>
			
		<!-- AngularJS e JS -->
		<script src="<c:url value='/resources/js/angular.min.js' />"></script>
		<script src="<c:url value='/resources/controller/MonitorController.js' />"></script>
		<script src="<c:url value='/resources/js/jquery-3.2.1.min.js' />"></script>
		<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>
					 
	</body>

</html>
