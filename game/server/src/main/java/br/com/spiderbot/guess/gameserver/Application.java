package br.com.spiderbot.guess.gameserver;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

/**
* Inicialização do servidor REST.
*
* <p>Apresenta também a página de documentação no endereço inicial.
*
* @since 16/11/2021
* @author $Author$
* @author $Committer$
* @branch $Branch$
*/
@SpringBootApplication
@Controller
public class Application {

	/**
	 * Apresenta a página inicial do aplicativo, com a documentação do projeto.
	 */
	@GetMapping(value = "/")
	public ModelAndView getRoot() {
		return new ModelAndView("index.html");
	}

	// public static void main(String[] args) {
	// 	SpringApplication.run(Application.class, args);
	// }
}
