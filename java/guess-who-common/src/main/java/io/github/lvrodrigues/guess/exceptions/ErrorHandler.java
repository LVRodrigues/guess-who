package io.github.lvrodrigues.guess.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * Tratamento para erros dos serviços.
 *
 * @since 28/06/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
@RestControllerAdvice
public class ErrorHandler {

    /**
     * Tratamento para erros de ordenação.
     *
     * @param ex Erro notificado.
     * @return Mensagem de retorno.
     */
    @ExceptionHandler(value = SortException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public Error sortExceptionHandle(SortException ex) {
        Error error = new Error();
        error.setCode(HttpStatus.BAD_REQUEST.value());
        error.setStatus(HttpStatus.BAD_REQUEST.name());
        error.setMessage(ex.getLocalizedMessage());
        return error;
    }
}
