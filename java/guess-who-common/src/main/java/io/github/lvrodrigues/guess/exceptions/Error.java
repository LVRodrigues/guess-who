package io.github.lvrodrigues.guess.exceptions;

import java.util.ArrayList;
import java.util.List;

/**
 * Objeto para notificação de erros.
 *
 * @since 28/06/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
public class Error {

    /**
     * Código de resposta HTTP.
     */
    private Integer code;

    /**
     * Estado de resposta da requisição HTTP.
     */
    private String status;

    /**
     * Mensagem informativa do erro ocorrido.
     */
    private String message;

    /**
     * Lista de causas para o erro ocorrido.
     */
    private List<String> causes;

    /**
     * Construtor padrão.
     */
    public Error() {
        causes = new ArrayList<>();
    }

    /**
     * Recupera o valor de {@link #code}.
     *
     * @return Código HTTP de resposta.
     */
    public Integer getCode() {
        return code;
    }

    /**
     * Atribui o valo de {@link #code}.
     *
     * @param code Código HTTP de resposta.
     */
    public void setCode(Integer code) {
        this.code = code;
    }

    /**
     * Recupera o campo {@link #status}.
     *
     * @return Estado da resposta HTTP.
     */
    public String getStatus() {
        return status;
    }

    /**
     * Atribui o campo {@link #status}.
     *
     * @param status Valor para atribuir.
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * Recupera o campo {@link #message}.
     *
     * @return Mensagem do erro.
     */
    public String getMessage() {
        return message;
    }

    /**
     * Atribui o campo {@link #message}.
     *
     * @param message Mensagem do erro.
     */
    public void setMessage(String message) {
        this.message = message;
    }

    /**
     * Recupera o campo {@link #causes}.
     *
     * @return Lista de causas.
     */
    public List<String> getCauses() {
        return causes.stream().toList();
    }

    /**
     * Atribui a lista de {@link #causes}.
     *
     * @param causes Lista de causas.
     */
    public void setCauses(List<String> causes) {
        if (causes == null) {
            this.causes = new ArrayList<>();
        } else {
            this.causes = causes.stream().toList();
        }
    }

    //CHECKSTYLE:OFF
    /* (non-Javadoc)
     * @see java.lang.Object#hashCode()
     */
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((causes == null) ? 0 : causes.hashCode());
        result = prime * result + ((code == null) ? 0 : code.hashCode());
        result = prime * result + ((message == null) ? 0 : message.hashCode());
        result = prime * result + ((status == null) ? 0 : status.hashCode());
        return result;
    }

    /* (non-Javadoc)
     * @see java.lang.Object#equals(java.lang.Object)
     */
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Error other = (Error) obj;
        if (causes == null) {
            if (other.causes != null)
                return false;
        } else if (!causes.equals(other.causes))
            return false;
        if (code == null) {
            if (other.code != null)
                return false;
        } else if (!code.equals(other.code))
            return false;
        if (message == null) {
            if (other.message != null)
                return false;
        } else if (!message.equals(other.message))
            return false;
        if (status == null) {
            if (other.status != null)
                return false;
        } else if (!status.equals(other.status))
            return false;
        return true;
    }
    //CHECKSTYLE:ON

    @Override
    public String toString() {
        return String.format("Error[code=%d, status=%s, message=%s, causes=(%s)", 
            code,
            status,
            message,
            causes.toString());
    }
}
