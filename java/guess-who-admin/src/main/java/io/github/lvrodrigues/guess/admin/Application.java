package io.github.lvrodrigues.guess.admin;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationToken;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import io.github.lvrodrigues.guess.exceptions.EnableGuessErrorHandler;
import io.github.lvrodrigues.guess.model.EnableGuessModel;
import io.github.lvrodrigues.guess.security.EnableSecurityHandler;

/**
 * Inicialização do servidor REST.
 *
 * <p>Apresenta também a página de documentação no endereço inicial.
 *
 * @since 23/06/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
@SpringBootApplication
@EnableGuessModel
@EnableGuessErrorHandler
@EnableSecurityHandler
@Controller
public class Application {

	/**
	 * Apresenta a página inicial do aplicativo, com a documentação do projeto.
	 *
	 * @return Página inicial do aplicativo.
	 */
	@GetMapping(value = "/")
	public ModelAndView getRoot() {
		return new ModelAndView("index.html");
	}

	/**
	 * Recupera o nome do usuário autenticado.
	 *
	 * @param authentication Token de autenticação.
	 * @return Nome do usuário.
	 */
	@GetMapping(value = "/whoiam")
	public ResponseEntity<String> whoIAm(Authentication authentication) {
		JwtAuthenticationToken token = (JwtAuthenticationToken) authentication;
		return ResponseEntity.ok(token.getTokenAttributes().get("name").toString());
	}

	/**
	 * Inicialização do aplicativo.
	 *
	 * @param args Parâmetros de inicialização.
	 */
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
}
