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
     * Estado de resposta da requisição HTTP.
     */
    private String status;

    /**
     * Descrição do erro ocorrido.
     */
    private String description;

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
     * Construtor com informações iniciais.
     *
     * @param status {@link #status}.
     * @param description {@link #description}.
     */
    public Error(String status, String description) {
        this.status = status;
        this.description = description;
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
     * Recupera o campo {@link #description}.
     *
     * @return Descrição do erro.
     */
    public String getDescription() {
        return description;
    }

    /**
     * Atribui o campo {@link #description}.
     *
     * @param description Descrição do erro.
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * Recupera o campo {@link #causes}.
     *
     * @return Lista de causas.
     */
    public List<String> getCauses() {
        if (causes == null) {
            return null;
        } else {
            return causes.stream().toList();
        }
    }

    /**
     * Atribui a lista de {@link #causes}.
     *
     * @param causes Lista de causas.
     */
    public void setCauses(List<String> causes) {
        if (causes == null) {
            this.causes = null;
        } else {
            this.causes = causes.stream().toList();
        }
    }
}
