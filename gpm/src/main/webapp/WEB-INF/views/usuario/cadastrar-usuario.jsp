<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html ng-app="UsuarioControllerApp" >
	<head>
	<meta charset="utf-8" />
	<title>GPM | CADASTRO DE USUÁRIO</title>
	
	<!-- CSS -->
	<link href="<c:url value='../resources/css/bootstrap.min.css' />" rel="stylesheet"></link>
	<link href="<c:url value='../resources/css/style.css' />" rel="stylesheet"></link>
	<!-- 
	<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="../resources/css/style.css" /> 
	 -->
	
	</head>
	<body>
	
		<!-- Topo da Página e MENU -->
		<div class="navbar-top navbar-default navbar-static-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">
						<span class="label label-primary">Gerenciador de Parque de Máquinas</span>
					</a>
					<div class="dropdown1">
						<button class="btn btn-primary dropdown-toggle1" type="button"
							id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="true">
							Usuário <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="#">Cadastrar Novo Usuário</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Listar Todos Usuários</a></li>
						</ul>
					</div>
					<div class="dropdown2">
						<button class="btn btn-primary dropdown-toggle2" type="button"
							id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="true">
							Computador <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="#">Cadastrar Novo Computador</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Listar Todos Computadores</a></li>
						</ul>
					</div>
					<div class="dropdown3">
						<button class="btn btn-primary dropdown-toggle3" type="button"
							id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="true">
							Impressora <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="#">Cadastrar Nova Impressora</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Listar Todas Impressoras</a></li>
						</ul>
					</div>
					<div class="dropdown4">
						<button class="btn btn-primary dropdown-toggle4" type="button"
							id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="true">
							Sair <span class=""></span>
						</button>
					</div>
					<div class="dropdown0">
						<button class="btn btn-primary dropdown-toggle0" type="button"
							id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="true">
							Inicio <span class=""></span>
						</button>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Painel -->
		<div class="panel panel-computador panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title panel-title-computador">Cadastro de
					Usuário</h3>
			</div>
			
			<!-- Formulário -->
			<form class="form-horizontal" ng-controller="UsuarioController">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="form-group">
							<label for="nome" class="col-sm-2 control-label">Nome
								Completo*</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="nome" name="nome"
									placeholder="Nome Completo do Usuário" required="required"
									autofocus="autofocus" ng-model="nome" ng-minlength="4" ng-maxlength="10"/>
							</div>
						</div>
						<span class='msg-erro msg-nome'></span>
						<div class="form-group">
							<label for="setor" class="col-sm-2 control-label">Email*</label>
							<div class="col-sm-4">
								<input type="email" class="form-control" id="email" name="email"
									placeholder="Email do Usuário" required="required"
									autofocus="autofocus" ng-model="email"/>
							</div>
						</div>
						<span class='msg-erro msg-email'></span>
						<div class="form-group">
							<label for="ip" class="col-sm-2 control-label">Senha*</label>
							<div class="col-sm-3">
								<input type="password" class="form-control" id="senha"
									name="senha" placeholder="Senha do Usuário" required="required"
									autofocus="autofocus" ng-model="senha"/>
							</div>
						</div>
						<span class='msg-erro msg-senha'></span>
						<div class="form-group">
							<label for="ip" class="col-sm-2 control-label">Repetir
								Senha*</label>
							<div class="col-sm-3">
								<input type="password" class="form-control" id="repetir-senha"
									name="repetir-senha" placeholder="Senha do Usuário"
									required="required" autofocus="autofocus" ng-model="rsenha" />
								</div>
						</div>
						<span class='msg-erro msg-rsenha'></span>
						<div class="form-group">
							<label for="ramal" class="col-sm-2 control-label">Telefone</label>
							<div class="col-sm-3">
								<input type="telefone" class="form-control" id="telefone"
									name="telefone" placeholder="Telefone do Usuário"
									required="required" autofocus="autofocus" ng-model="telefone"/>
							</div>
						</div>
						<span class='msg-erro msg-telefone'></span>
						<div class="form-group">
							<label for="status" class="col-sm-2 control-label">Perfil*</label>
							<div class="col-sm-2">
								<select class="form-control" name="perfil" id="perfil" ng-model="perfil">
									<option valeu="padrao" ng-selected="true">Padrão</option>
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
		
		<!-- Rodapé da Página -->
		<div class="navbar navbar-default navbar-static-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<div class="container">
						<div class="row">
							<div class="col-md-4">
								<h2>Produto</h2>
								<p>
									Criado pela empresa TECDAINFOR, <br></br> o GPM é uma solução
									capaz de gerenciar <br></br> todos os computadores da sua
									empresa. <br></br> Venha conhecer nossas soluções ...
								</p>
							</div>
							<div class="col-md-4">
								<h2>Help</h2>
								<p>
									Dúvidas com o GPM? <br></br> Acesse o link e tire suas dúvidas
									... <br></br> Manuel do aplicativo ...
								</p>
							</div>
							<div class="col-md-4">
								<h2>Contato</h2>
								<p>
									Email: junioribeiro-2009@hotmail.com <br></br> Fone: (081)
									99542-6355 <br></br> Técnico Responsábel: Misael Júnior <br></br>
									Empresa: TecDaInfor
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>		
		
		<!-- AngularJS e JS -->
		<script src="<c:url value='../resources/js/angular.min.js' />"></script>
		<script src="<c:url value='../resources/controller/UsuarioController.js' />"></script>
		<script src="<c:url value='../resources/js/jquery-3.2.1.min.js' />"></script>
		<script src="<c:url value='../resources/js/bootstrap.min.js' />"></script>
		<script src="<c:url value='../resources/js/validador.js' />"></script>
		<script src="<c:url value='../resources/js/validador.min.js' />"></script>
		
		<!-- 
		<script type="text/javascript" src="../resources/js/angular.min.js"></script>
		<script type="text/javascript" src="../resources/controller/UsuarioController.js"></script>
		<script type="text/javascript" src="../resources/js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="../resources/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../resources/js/validador.js"></script>
		<script type="text/javascript" src="../resources/js/validador.min.js"></script>
		 -->
		 
	</body>
</html>
