package br.com.bec.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.bec.dao.JdbcUsuarioDao;
import br.com.bec.modelo.Usuario;

@Controller
public class LoginController {
	
	private final JdbcUsuarioDao dao;
	
	@Autowired
	private LoginController(JdbcUsuarioDao dao) {
		this.dao = dao;
	}

	@RequestMapping("loginForm")
	public String loginForm() {
		return "login";
	}

	@RequestMapping("efetuaLogin")
	public String efetuaLogin(Usuario usuario, HttpSession session) {
		if (dao.existeUsuario(usuario)) {
			session.setAttribute("usuarioLogado", usuario);
			return "tarefa/lista";
		}
		return "redirect:login";
	}

	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:login";
	}
}
