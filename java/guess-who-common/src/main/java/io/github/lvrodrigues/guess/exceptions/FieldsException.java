package io.github.lvrodrigues.guess.exceptions;

/**
 * Informa um erro no tratamento de filtros para os campos de retorno de uma pesquisa paginada.
 *
 * @since 28/06/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
public class FieldsException extends GuessRuntimeException {

    /**
     * Mensagem de informação sobre a falha.
     */
    private static final String MESSAGE = "Erro de seleção de campos para resposta.";
    
    /**
     * Construtor padrão.
     */
    public FieldsException() {
        super(MESSAGE);
    }

    /**
     * Construtor com mensagem.
     *
     * @param message Mensagem com informação sobre o erro.
     */
    public FieldsException(String message) {
        super(message);
    }
}
