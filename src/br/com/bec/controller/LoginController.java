package br.com.bec.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.bec.dao.UsuarioDao;
import br.com.bec.modelo.Usuario;

@Controller
@Transactional
public class LoginController {

	@Autowired
	UsuarioDao dao;

	@RequestMapping("loginForm")
	public String loginForm() {
		return "login";
	}

	@RequestMapping("efetuaLogin")
	public String efetuaLogin(Usuario usuario, HttpSession session) {

		Usuario respUser = dao.existeUsuario(usuario);
		if (respUser == null) {
			return "redirect:login";
		} else {
			session.setAttribute("usuarioLogado", usuario);
			return "redirect:listaTarefas";
		}

	}

	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:login";
	}
}
