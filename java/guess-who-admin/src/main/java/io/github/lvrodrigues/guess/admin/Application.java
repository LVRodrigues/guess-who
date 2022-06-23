package io.github.lvrodrigues.guess.admin;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

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
	 * Inicialização do aplicativo.
	 *
	 * @param args Parâmetros de inicialização.
	 */
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
}
