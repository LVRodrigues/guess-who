package io.github.lvrodrigues.guess.exceptions;

/**
 * Informa um erro no tratamento de filtros para os campos de retorno de uma pesquisa paginada.
 *
 * @since 28/06/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
public class FieldsException extends RuntimeException {
    
    /**
     * Construtor padrão.
     */
    public FieldsException() {
    }

    /**
     * Construtor com mensagem.
     *
     * @param message Mensagem com informação sobre o erro.
     */
    public FieldsException(String message) {
        super(message);
    }

    /**
     * Construtor com informação da causa.
     *
     * @param cause Causa do erro.
     */
    public FieldsException(Throwable cause) {
        super(cause);
    }

    /**
     * Construtor com mensagem e causa.
     *
     * @param message Mensagem com informação sobre o erro.
     * @param cause Causa do erro.
     */
    public FieldsException(String message, Throwable cause) {
        super(message, cause);
    }

    /**
     * Construtor com configurações diversas.
     *
     * @param message Mensagem com informação sobre o erro.
     * @param cause Causa do erro.
     * @param enableSuppression Se é para suprimir o erro.
     * @param writableStackTrace Se é para imprimir a pilha de processos.
     */
    protected FieldsException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
