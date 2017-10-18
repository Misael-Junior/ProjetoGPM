<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html ng-app="MonitorControllerApp" >
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<title>GPM | EDITAR CADASTRO DE IMPRESSORA</title>
		
		<!-- CSS -->
		<link href="<c:url value='/resources/css/bootstrap.min.css' />" rel="stylesheet"></link>
		<link href="<c:url value='/resources/css/style.css' />" rel="stylesheet"></link> 
	
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
						     <li><a href="/gpm/painel">In�cio</a></li>
						     <li><a href="../usuario/listar">Usu�rio</a></li>
						     <li><a href="../computador/listar">Computador</a></li>
						     <li><a href="../monitor/listar">Monitor</a></li>
						     <li><a href="../listar">Impressora</a></li>
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
						Impressora</h3>
				</div>
				
				<!-- Formul�rio -->
				<form name="userForm" class="form-horizontal" ng-controller="ImpressoraController" >
					<div class="panel panel-default">
						<div class="panel-body">
						
						<div class="form-group">
								<label for="codigo" class="col-sm-2 control-label">Codigo
								*</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" id="id" name="id"
										placeholder="C�digo da Impressora" required="required"
										autofocus="autofocus" ng-model="id" readonly="readonly"  ng-init="id='${impressora.id}'"/>
								</div>
							</div>
						
							<div class="form-group" ng-class="{ 'has-error' : userForm.modelo.$invalid && !userForm.modelo.$pristine }" >
								<label for="modelo" class="col-sm-2 control-label">Modelo*</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="modelo" name="modelo"
										placeholder="Modelo da impressora"
										autofocus="autofocus" ng-model="modelo" required />
										<p ng-show="userForm.modelo.$invalid && !userForm.modelo.$pristine" class="help-block">Modelo � Obrigat�ria</p>
										
										
								</div>
								<label for="descricao" class="col-sm-2 control-label">Descri��o*</label>
								<div class="col-sm-3" ng-class="{ 'has-error' : userForm.descricao.$invalid && !userForm.descricao.$pristine }">
									<input type="text" class="form-control" id="descricao" name="descricao"
										placeholder="Descri��o da impressora" required="required"
										autofocus="autofocus" ng-model="descricao" required/>
										<p ng-show="userForm.descricao.$invalid && !userForm.descricao.$pristine" class="help-block">Informe o modelo do monitor.</p>
								</div>
							</div>

							<div class="form-group" ng-class="{ 'has-error' : userForm.ramal.$invalid && !userForm.ramal.$pristine }" >
								<label for="ramal" class="col-sm-2 control-label">Ramal*</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="ramal"
										name="ramal" placeholder="Ramal" required
										autofocus="autofocus" ng-model="ramal"/>
										<p ng-show="userForm.ramal.$invalid && !userForm.ramal.$pristine" class="help-block">Informe o n�mero do ramal.</p>
								</div>
								<label for="setor" class="col-sm-2 control-label">Setor*</label>
								<div class="col-sm-3" ng-class="{ 'has-error' : userForm.setor.$invalid && !userForm.setor.$pristine }">
									<input type="text" class="form-control" id="setor"
										name="setor" placeholder="Ex: Diagn�sticos"
										required autofocus="autofocus" ng-model="setor" />
										<p ng-show="userForm.setor.$invalid && !userForm.setor.$pristine" class="help-block">Informe o setor</p>
									</div>
							</div>

                                <div class="form-group" ng-class="{ 'has-error' : userForm.ip.$invalid && !userForm.ip.$pristine }" >
								<label for="ramal" class="col-sm-2 control-label">IP*</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="ip"
										name="ip" placeholder="Ex: 192.168.102.14" required
										autofocus="autofocus" ng-model="ip"/>
										<p ng-show="userForm.ip.$invalid && !userForm.ip.$pristine" class="help-block">Informe o n�mero do IP.</p>
								</div>
								<label for="setor" class="col-sm-2 control-label">N�mero de S�rie*</label>
								<div class="col-sm-3" ng-class="{ 'has-error' : userForm.num_serie.$invalid && !userForm.num_serie.$pristine }">
									<input type="text" class="form-control" id="num_serie"
										name="num_serie" placeholder="Ex:8511622515165"
										required autofocus="autofocus" ng-model="num_serie" />
										<p ng-show="userForm.num_serie.$invalid && !userForm.num_serie.$pristine" class="help-block">Informe o n�mero de s�rie</p>
									</div>
							</div>
							
						</div>
					</div>
				</form>
			</div>
		</section>
			
		<!-- AngularJS e JS -->
		<script src="<c:url value='/resources/js/angular.min.js' />"></script>
		<script src="<c:url value='/resources/controller/ImpressoraController.js' />"></script>
		<script src="<c:url value='/resources/js/jquery-3.2.1.min.js' />"></script>
		<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>
					 
	</body>

</html>
