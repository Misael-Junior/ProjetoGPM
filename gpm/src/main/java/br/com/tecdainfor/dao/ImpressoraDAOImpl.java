package br.com.tecdainfor.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

import br.com.tecdainfor.model.Impressora;
import br.com.tecdainfor.model.Monitor;

public class ImpressoraDAOImpl implements  ImpressoraDAO{

	
	@PersistenceContext(type = PersistenceContextType.EXTENDED)
	private EntityManager manager;
	
	/* (non-Javadoc)
	 * @see br.com.tecdainfor.dao.ImpressoraDAO#cadastrarImpressora(br.com.tecdainfor.model.Impressora)
	 */
	@Override
	@javax.transaction.Transactional
	public Impressora cadastrarImpressora(Impressora impressora){
		return manager.merge(impressora);
	}
	
	/* (non-Javadoc)
	 * @see br.com.tecdainfor.dao.ImpressoraDAO#alterarImpressora(br.com.tecdainfor.model.Impressora)
	 */
	@Override
	@javax.transaction.Transactional
	public Impressora alterarImpressora(Impressora impressora){
		return manager.merge(impressora);
				
	}
	
	/* (non-Javadoc)
	 * @see br.com.tecdainfor.dao.ImpressoraDAO#consultarImpressora(int)
	 */
	@Override
	@javax.transaction.Transactional
	public Impressora consultarImpressora(int id){
		return manager.find(Impressora.class, id);
	}
	
	/* (non-Javadoc)
	 * @see br.com.tecdainfor.dao.ImpressoraDAO#listarImpSetor(java.lang.String)
	 */
	@Override
	@javax.transaction.Transactional
	public List<Impressora> listarImpSetor(String nome){
		return manager.createQuery(" SELECT u FROM Impressora u WHERE u.setor = nome ").getResultList();
		
	}
	
	/* (non-Javadoc)
	 * @see br.com.tecdainfor.dao.ImpressoraDAO#excluir(int)
	 */
	@Override
	@javax.transaction.Transactional
	public Impressora excluir(int id) {
		// TODO Auto-generated method stub
		Impressora impressora = this.consultarImpressora(id);
		manager.remove(impressora);
		return impressora;
		//porque esse metodo retorna um monitor?
	}
	
	/* (non-Javadoc)
	 * @see br.com.tecdainfor.dao.ImpressoraDAO#listarImpressoras()
	 */
	@Override
	@javax.transaction.Transactional
	public List<Impressora> listarImpressoras(){
		return manager.createQuery("SELECT u FROM Impressora u ORDER BY u.setor", Impressora.class).getResultList();
	}


	
}
