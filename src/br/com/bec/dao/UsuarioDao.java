package br.com.bec.dao;

import java.util.List;

import br.com.bec.modelo.Usuario;

public interface UsuarioDao {
	
	Usuario buscaPorId(Long id);
	List<Usuario> lista();
	void adiciona(Usuario u);
	void altera(Usuario u);
	void remove(Usuario u);
	Usuario existeUsuario(Usuario u);

}
