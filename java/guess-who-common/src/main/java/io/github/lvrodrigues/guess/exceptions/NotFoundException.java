package io.github.lvrodrigues.guess.exceptions;

/**
 * Informa que não foi encontrado nenhum recurso com o filtro apresentado.
 *
 * @since 28/06/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
public class NotFoundException extends GuessRuntimeException {

    /**
     * Mensagem de informação sobre a falha.
     */
    private static final String MESSAGE = "Registro não localizado.";

    /**
     * Construtor padrão.
     */
    public NotFoundException() {
        super(MESSAGE);
    }

    /**
     * Construtor com mensagem.
     *
     * @param message Mensagem com informação sobre o erro.
     */
    public NotFoundException(String message) {
        super(message);
    }
}
