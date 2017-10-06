package br.com.tecdainfor.dao;

import java.util.List;

import br.com.tecdainfor.model.Monitor;

public interface MonitorDAO {

    public Monitor cadastrarUsuario(Monitor usuario);
		
	public Monitor alterarMonitor(Monitor monitor);
	
	public Monitor consultarMonitorCodigo(int id);
	
	public Monitor consultarMonitorTomb(String tomb);
	
	public Monitor excluir(int id);
	
	public List<Monitor> listarMonitores();
	
	
}
