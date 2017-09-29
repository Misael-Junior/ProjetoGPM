<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html ng-app="UsuarioControllerApp">
	<head>
		 <meta charset="utf-8">
		 <meta http-equiv="X-UA-Compatible" content="IE=edge">
		 <meta name="viewport" content="width=device-width, initial-scale=1">
		 <title>GPM | LISTA DE USUÁRIOS</title>

		 <!-- CSS -->
		<link href="<c:url value='../resources/css/bootstrap.min.css' />" rel="stylesheet"></link>
		<link href="<c:url value='../resources/css/style.css' />" rel="stylesheet"></link> 

	</head>
<body>

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
				     <li><a href="#">Usuário</a></li>
				     <li><a href="#">Computador</a></li>
				     <li><a href="#">Impressora</a></li>
			    </ul>
		   </div>
	  </div>
 </nav>

 <div id="main" class="container-fluid" style="margin-top: 50px">
 
 	<div id="top" class="row">
		<div class="col-sm-3">
			<h2>Lista Usuário</h2>
		</div>
		<div class="col-sm-6">
			
			<div class="input-group h2">
				<input name="data[search]" class="form-control" id="search" type="text" placeholder="Pesquisar Usuário">
				<span class="input-group-btn">
					<button class="btn btn-primary" type="submit">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</span>
			</div>
			
		</div>
		<div class="col-sm-3">
			<a href="cadastrar" class="btn btn-primary pull-right h2">Cadastrar Novo Usuário</a>
		</div>
	</div> <!-- /#top -->
 
 
 	<hr />
 	<div id="list" class="row">
	
	<div class="table-responsive col-md-12">
		<table class="table table-striped" cellspacing="0" cellpadding="0" ng-controller="UsuarioController" data-ng-init="init()">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>Email</th>
					<th>Telefone</th>
					<th>Perfil</th>
					<th class="actions">Ações</th>
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="usuario in usuarios">
					<td>{{usuario.id}}</td>
					<td>{{usuario.nome}}</td>
					<td>{{usuario.email}}</td>
					<td>{{usuario.telefone}}</td>
					<td>{{usuario.perfil}}</td>
					<td class="actions">
						<a class="btn btn-success btn-xs" href="view.html">Visualizar</a>
						<a class="btn btn-warning btn-xs" href="editar.html" ng-href="alterar/{{usuario.id}}" >Editar</a>
						<a class="btn btn-danger btn-xs"  href="#" data-toggle="modal" data-target="#delete-modal">Excluir</a>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	</div> <!-- /#list -->
	
	<div id="bottom" class="row">
		<div class="col-md-12">
			<ul class="pagination">
				<li class="disabled"><a>&lt; Anterior</a></li>
				<li class="disabled"><a>1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li class="next"><a href="#" rel="next">Próximo &gt;</a></li>
			</ul><!-- /.pagination -->
		</div>
	</div> <!-- /#bottom -->
 </div> <!-- /#main -->

<!-- Modal -->
<div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="modalLabel">Excluir Item</h4>
      </div>
      <div class="modal-body">
        Deseja realmente excluir este item?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">Sim</button>
	<button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
      </div>
    </div>
  </div>
</div>

 <!-- AngularJS e JS -->
		<script src="<c:url value='../resources/js/angular.min.js' />"></script>
		<script src="<c:url value='../resources/controller/UsuarioController.js' />"></script>
		<script src="<c:url value='../resources/js/jquery-3.2.1.min.js' />"></script>
		<script src="<c:url value='../resources/js/bootstrap.min.js' />"></script>
		<!-- <script src="<c:url value='../resources/js/validador.js' />"></script>
		<script src="<c:url value='../resources/js/validador.min.js' />"></script> -->
</body>
</html>