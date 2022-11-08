package io.github.lvrodrigues.guess.exceptions;

/**
 * Informa que não foi encontrado nenhum recurso com o filtro apresentado.
 *
 * @since 28/06/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
public class NotFoundException extends RuntimeException {

    /**
     * Construtor padrão.
     */
    public NotFoundException() {
    }

    /**
     * Construtor com mensagem.
     *
     * @param message Mensagem com informação sobre o erro.
     */
    public NotFoundException(String message) {
        super(message);
    }

    /**
     * Construtor com informação da causa.
     *
     * @param cause Causa do erro.
     */
    public NotFoundException(Throwable cause) {
        super(cause);
    }

    /**
     * Construtor com mensagem e causa.
     *
     * @param message Mensagem com informação sobre o erro.
     * @param cause Causa do erro.
     */
    public NotFoundException(String message, Throwable cause) {
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
    protected NotFoundException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
