/**
 * Controlador de Impressora AgularJS.
 */

var ImpressoraControllerApp = angular.module("ImpressoraControllerApp",[]);

ImpressoraControllerApp.controller("ImpressoraController", function($scope, $window, $http){
	
	$scope.id       = null;
	$scope.descricao  = null;
    $scope.ip  = null;
	$scope.ramal  = null;
	$scope.setor  = null;
	$scope.num_serie  = null;
	$scope.modelo  = null;
	
	
	$scope.init = function(){
		
		$scope.impressoras = new Array();
	
		var response = $http.get("lista");
		
		response.success(function(data, status, headers, config){
			
			$scope.impressoras = data;
			
		});
		
		response.error(function(data, status, headers, config){
			
			$window.alert("Erro ao Tentar Listar Verifique Sua Conexão com o Banco " + data);
			
		});	
	}
	
	$scope.submitForm = function(isValid) {
		 
		 if (isValid) {
			 
			 $scope.cadastrarImpressora();
			 
		 }
		 
	 }
	
	$scope.cadastrarImpressora = function(){
		
	
			var impressora      = new Object();
			impressora.descricao     = $scope.descricao;
			impressora.ip    = $scope.ip;
			impressora.ramal    = $scope.ramal;
			impressora.setor = $scope.setor;
			impressora.num_serie = $scope.num_serie;
			impressora.modelo = $scope.modelo;
			
			
			var response = $http.post("cadastrar", impressora);
			
		
		
		response.success(function(data, status, headers, config){
			
			if(data.montomb != null){
				
				$window.alert("Cadastro de impressora realizado com Sucesso !!!");
				
				impressora.descricao     = $scope.descricao;
				impressora.ip    = $scope.ip;
				impressora.ramal    = $scope.ramal;
				impressora.setor = $scope.setor;
				impressora.num_serie = $scope.num_serie;
				impressora.modelo = $scope.modelo;
			
				
				window.location.href = "listar";
				
			}else{
				
				$window.alert("Erro ao Tentar Cadastrar");
			}			
		});
		
		response.error(function(data, status, headers, config){
			
			$window.alert("Erro ao Tentar Alterar ");
			
		});
	}
	
	$scope.alterarImpressora = function(){
		
		var mensagem = confirm ("Deseja Realmente Alterar o Cadastro ??? ");
		
		if(mensagem == true){
			
			
				
			var impressora      = new Object();
			impressora.descricao     = $scope.descricao;
			impressora.ip    = $scope.ip;
			impressora.ramal    = $scope.ramal;
			impressora.setor = $scope.setor;
			impressora.num_serie = $scope.num_serie;
			impressora.modelo = $scope.modelo;
				
				var response = $http.post("../alterar", impressora);
				
			
			
			response.success(function(data, status, headers, config){
			
				$window.alert("Cadastro de Alterado com Sucesso !!!");
				
				$scope.id       = null;
				impressora.descricao     = $scope.descricao;
				impressora.ip    = $scope.ip;
				impressora.ramal    = $scope.ramal;
				impressora.setor = $scope.setor;
				impressora.num_serie = $scope.num_serie;
				impressora.modelo = $scope.modelo;
								
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
	
	$scope.excluir = function(id, modelo){
		
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

