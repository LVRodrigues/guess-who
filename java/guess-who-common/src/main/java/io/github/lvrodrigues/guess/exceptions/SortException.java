package io.github.lvrodrigues.guess.exceptions;

/**
 * Informa um erro ao aplicar a ordenação em uma consulta.
 *
 * @since 28/06/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
public class SortException extends GuessRuntimeException {

    /**
     * Mensagem de informação sobre a falha.
     */
    private static final String MESSAGE = "Erro de ordenação.";    
    
    /**
     * Construtor padrão.
     */
    public SortException() {
        super(MESSAGE);
    }

    /**
     * Construtor com mensagem.
     *
     * @param message Mensagem com informação sobre o erro.
     */
    public SortException(String message) {
        super(message);
    }
}
