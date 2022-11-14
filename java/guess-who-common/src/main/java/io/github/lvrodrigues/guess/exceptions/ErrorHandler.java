package io.github.lvrodrigues.guess.exceptions;

import java.util.Arrays;

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
     * Tratamento para erros comuns.
     *
     * @param ex Erro notificado.
     * @return Mensagem de retorno.
     */
    @ExceptionHandler(value = GuessRuntimeException.class)
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public Error badRequestExceptionHandle(GuessRuntimeException ex) {
        Error error = new Error();
        error.setCode(HttpStatus.BAD_REQUEST.value());
        error.setStatus(HttpStatus.BAD_REQUEST.name());
        error.setMessage(ex.getLocalizedMessage());
        error.setCauses(Arrays.asList(ex.getDetails()));
        return error;
    }

    /**
     * Tratamento para erro quando não encontrar uma informação.
     *
     * @param ex Erro notificado.
     * @return Mensagem de retorno.
     */
    @ExceptionHandler(value = NotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public Error notFoundExceptionHandle(NotFoundException ex) {
        Error error = new Error();
        error.setCode(HttpStatus.NOT_FOUND.value());
        error.setStatus(HttpStatus.NOT_FOUND.name());
        error.setMessage(ex.getLocalizedMessage());
        error.setCauses(Arrays.asList(ex.getDetails()));
        return error;
    }
}
