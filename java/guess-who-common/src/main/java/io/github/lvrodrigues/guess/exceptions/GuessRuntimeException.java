package io.github.lvrodrigues.guess.exceptions;

import java.util.ArrayList;
import java.util.List;

/**
 * Tratamento de erro padrão para o aplicativo Guess Who?
 *
 * @since 13/11/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
public class GuessRuntimeException extends RuntimeException {

    /**
     * Informações detalhadas sobre a exceção.
     */
    private List<String> details;

    /**
     * Construtor padrão.
     */
    public GuessRuntimeException() {
        details = new ArrayList<>();
    }

    /**
     * Construtor com mensagem.
     *
     * @param message Mensagem com informação sobre o erro.
     */
    public GuessRuntimeException(String message) {
        super(message);
        details = new ArrayList<>();
    }

    /**
     * Construtor com informação da causa.
     *
     * @param cause Causa do erro.
     */
    public GuessRuntimeException(Throwable cause) {
        super(cause);
        details = new ArrayList<>();
    }

    /**
     * Construtor com mensagem e causa.
     *
     * @param message Mensagem com informação sobre o erro.
     * @param cause Causa do erro.
     */
    public GuessRuntimeException(String message, Throwable cause) {
        super(message, cause);
        details = new ArrayList<>();
    }

    /**
     * Construtor com configurações diversas.
     *
     * @param message Mensagem com informação sobre o erro.
     * @param cause Causa do erro.
     * @param enableSuppression Se é para suprimir o erro.
     * @param writableStackTrace Se é para imprimir a pilha de processos.
     */
    protected GuessRuntimeException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
        details = new ArrayList<>();
    }

    /**
     * Recupera a lista de detalhes sobre a exceção.
     *
     * @return Matriz de textos com informações detalhadas sobre a falha.
     */
    public String[] getDetails() {
        return (String[]) details.toArray(new String[details.size()]);
    }

    /**
     * Adiciona um detalhe de informação sobre a exceção.
     *
     * @param detail Mensagem detalhada.
     */
    public void addDetail(String detail) {
        details.add(detail);
    }
}
