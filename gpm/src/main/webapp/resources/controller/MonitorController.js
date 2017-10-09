/**
 * Controlador de Monitor AgularJS.
 */

var MonitorControllerApp = angular.module("MonitorControllerApp",[]);

MonitorControllerApp.controller("MonitorController", function($scope, $window, $http){
	
	$scope.id       = null;
	$scope.marca     = null;
	$scope.modelo    = null;
	$scope.montomb    = null;
	$scope.descricao   = null;
	
	
	$scope.init = function(){
		
		$scope.monitores = new Array();
	
		var response = $http.get("lista");
		
		response.success(function(data, status, headers, config){
			
			$scope.monitores = data;
			
		});
		
		response.error(function(data, status, headers, config){
			
			$window.alert("Erro ao Tentar Listar Verifique Sua Conexão com o Banco " + data);
			
		});	
	}
	
	$scope.submitForm = function(isValid) {
		 
		 if (isValid) {
			 
			 $scope.cadastrarMonitor();
			 
		 }
		 
	 }
	
	$scope.cadastrarMonitor = function(){
		
	
			var monitor      = new Object();
			monitor.marca     = $scope.marca;
			monitor.modelo    = $scope.modelo;
			monitor.montomb    = $scope.montomb;
			monitor.descricao = $scope.descricao;
			
			
			var response = $http.post("cadastrar", monitor);
			
		
		
		response.success(function(data, status, headers, config){
			
			if(data.montomb != null){
				
				$window.alert("Cadastro de monitor realizado com Sucesso !!!");
				
				$scope.marca     = null;
				$scope.modelo    = null;
				$scope.montomb    = null;
				$scope.descricao   = null;
			
				
				window.location.href = "listar";
				
			}else{
				
				$window.alert("Erro ao Tentar Cadastrar");
			}			
		});
		
		response.error(function(data, status, headers, config){
			
			$window.alert("Erro ao Tentar Alterar ");
			
		});
	}
	
	$scope.alterarMonitor = function(){
		
		var mensagem = confirm ("Deseja Realmente Alterar o Cadastro ??? ");
		
		if(mensagem == true){
			
			
				
			var monitor      = new Object();
			monitor.marca     = $scope.marca;
			monitor.modelo    = $scope.modelo;
			monitor.montomb    = $scope.montomb;
			monitor.descricao = $scope.descricao;
				
				var response = $http.post("../alterar", monitor);
				
			
			
			response.success(function(data, status, headers, config){
			
				$window.alert("Cadastro de Alterado com Sucesso !!!");
				
				$scope.id       = null;
				$scope.marca     = null;
				$scope.modelo    = null;
				$scope.montomb    = null;
				$scope.descricao = null;
								
				window.location.href = "../listar";
				
			});
			
			response.error(function(data, status, headers, config){
				
				$window.alert("Erro ao Tentar Alterar ");
				
			});
		
		}
		
	}
	
	/* $scope.buscar = function(){
		
		nome = $scope.nome;
		
		var response = $http.post("buscar/" + nome);
		
		response.success(function(data, status, headers, config){
			
			$scope.usuarios = data;
			
		});
	}*/
	
	$scope.excluir = function(id, marca){
		
		var mensagem = confirm ("Deseja Realmente Excluir o Cadastro??? ");
		
		if(mensagem == true){
			
			var response = $http.post("excluir/" + id);
			
			response.success(function(data, status, headers, config){
				
				$scope.init();
				
				$window.alert("Cadastro de excluido com Sucesso !!!");
				
			});
			
			response.error(function(data, status, headers, config){
				
				$window.alert("Erro ao Tentar Excluir ");
				
			});
		}	
		
	}
	
});


