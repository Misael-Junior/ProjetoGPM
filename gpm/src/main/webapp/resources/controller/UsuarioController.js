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
	
	$scope.init = function(){
		
		$scope.usuarios = new Array();
	
		var response = $http.get("lista");
		
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
			
			var usuario      = new Object();
			usuario.nome     = $scope.nome;
			usuario.email    = $scope.email;
			usuario.senha    = $scope.senha;
			usuario.telefone = $scope.telefone;
			usuario.perfil   = $scope.perfil;
			
			var response = $http.post("cadastrar", usuario);
			
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
				
				window.location.href = "listar";
				
			}else{
				
				$window.alert("Erro ao Tentar Cadastrar. Campos Obrigatórios estão Vazios !!!");
			}			
		});
		
		response.error(function(data, status, headers, config){
			
			$window.alert(data);
			
		});
	}
	
	$scope.alterarUsuario = function(){
		
		var usuario      = new Object();
		usuario.id       = $scope.id;
		usuario.nome     = $scope.nome;
		usuario.email    = $scope.email;
		usuario.senha    = $scope.senha;
		usuario.telefone = $scope.telefone;
		usuario.perfil   = $scope.perfil;
		
		var response = $http.post("../alterar", usuario);
		
		response.success(function(data, status, headers, config){
		
			$window.alert("Cadastro de " + data.nome + " Alterado com Sucesso !!!");
			
			$scope.id       = null;
			$scope.nome     = null;
			$scope.login    = null;
			$scope.senha    = null;
			$scope.telefone = null;
							
			window.location.href = "../listar";
			
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


