package io.github.lvrodrigues.guess.exceptions;

/**
 * Informa um erro ao configurar uma página de retorno.
 *
 * @since 28/06/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
public class PageException extends GuessRuntimeException {

    /**
     * Mensagem de informação sobre a falha.
     */
    private static final String MESSAGE = "Índice de página inválido.";
    
    /**
     * Construtor padrão.
     */
    public PageException() {
        super(MESSAGE);
    }

    /**
     * Construtor com mensagem.
     *
     * @param message Mensagem com informação sobre o erro.
     */
    public PageException(String message) {
        super(message);
    }
}
