package br.com.bec.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import br.com.bec.modelo.Usuario;

@Repository
public class JpaUsuarioDao implements UsuarioDao {

	@PersistenceContext
	EntityManager manager;
	
	@Override
	public Usuario buscaPorId(Long id) {
		return manager.find(Usuario.class, id);
	}

	@Override
	public List<Usuario> lista() {
		return manager.createQuery("select u from Usuario u").getResultList();
	}

	@Override
	public void adiciona(Usuario u) {
		manager.persist(u);
		
	}

	@Override
	public void altera(Usuario u) {
		manager.merge(u);
		
	}

	@Override
	public void remove(Usuario u) {
		Usuario usuarioARemover = buscaPorId(u.getId());
		manager.remove(usuarioARemover);
		
	}

	@Override	
	public Usuario existeUsuario(Usuario u) {
		 
		try {
			String qlString = "select u from Usuario u WHERE u.login = ?1 and u.senha = ?2";
			TypedQuery<Usuario> query = manager.createQuery(qlString, Usuario.class);		
			query.setParameter(1, u.getLogin());
			query.setParameter(2, u.getSenha());
	 
			return query.getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
	}

}
