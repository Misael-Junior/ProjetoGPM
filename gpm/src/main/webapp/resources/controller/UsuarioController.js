/**
 * Controlador de Usuário AgularJS.
 */

var UsuarioControllerApp = angular.module("UsuarioControllerApp",[]);

UsuarioControllerApp.controller("UsuarioController", function($scope, $window, $http){
	
	$scope.id       = null;
	$scope.nome     = null;
	$scope.login    = null;
	$scope.senha    = null;
	$scope.rsenha   = null;
	$scope.telefone = null;	
	
	$scope.usuarios = new Array();
	
		$scope.init = function(){
		
			var response = $http.get("listar");
			
			response.success(function(data, status, headers, config){
				
				$scope.usuarios = data;
				
			});
			
			response.error(function(data, status, headers, config){
				
				$window.alert(data);
				
			});
		
	}
	
	
	$scope.cadastrarUsuario = function(){
		
		function validaCadastro(evt){}
		
		if($scope.senha == $scope.rsenha){
			
			var usuarioModel      = new Object();
			usuarioModel.nome     = $scope.nome;
			usuarioModel.email    = $scope.email;
			usuarioModel.senha    = $scope.senha;
			usuarioModel.telefone = $scope.telefone;
			usuarioModel.perfil   = $scope.perfil;
			
			var response = $http.post("cadastrar", usuarioModel);
			
		}else{
			
			$window.alert("Senhas não Conferem !!! ");
			$scope.senha  = null;
			$scope.rsenha = null;
		}
		
		response.success(function(data, status, headers, config){
			
			if(data.nome != null){
				
				$window.alert("Cadastro de " + data.nome + " Realizado com Sucesso !!!");
				
				$scope.nome     = null;
				$scope.email    = null;
				$scope.senha    = null;
				$scope.rsenha   = null;
				$scope.telefone = null;
				
			}else{
				
				$window.alert("Erro ao Tentar Cadastrar. Campos Obrigatórios estão Vazios !!!");
			}			
		});
		
		response.error(function(data, status, headers, config){
			
			$window.alert(data);
			
		});
	}
	
	$scope.alterarUsuario = function(){
		
		var usuarioModel      = new Object();
		usuarioModel.nome     = $scope.nome;
		usuarioModel.email    = $scope.email;
		usuarioModel.senha    = $scope.senha;
		usuarioModel.telefone = $scope.telefone;
		usuarioModel.perfil   = $scope.perfil;
		
		var response = $http.post("alterar", usuarioModel);
		
		response.success(function(data, status, headers, config){
			
			if(data.codigo == 1){
				
				$window.alert("Cadastro de " + data.nome + " Alterado com Sucesso !!!");
				
				$scope.id       = null;
				$scope.nome     = null;
				$scope.login    = null;
				$scope.senha    = null;
				$scope.rsenha   = null;
				$scope.telefone = null;
								
				window.location.href = "../alterar";
			
			}else{
				
				$window.alert("Erro ao Tentar Alterar Cadastro de Usuário. Campos Obrigatórios Vazios !!!");
			}
		});
		
		response.error(function(data, status, headers, config){
			
			$window.alert(data);
			
		});
		
	}
	
	$scope.excluir = function(id){
		
		if($window.confirm("Deseja Realmente Excluir esse Registro ???")){
			
			var response = $http['delete']("excluir/+id");
			response.success(function(data, status, headers, config){
				
				$scope.init();
				
			});
			
			response.error(function(data, status, headers, config){
				
				$window.alert(data);
				
			});
		}
	}
	
});


