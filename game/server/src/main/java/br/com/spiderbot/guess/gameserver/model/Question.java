package br.com.spiderbot.guess.gameserver.model;

import java.io.Serializable;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

/**
* Pergunta sobre um personagem bíblico.

* @since 16/11/2021
* @author $Author$
* @author $Committer$
* @branch $Branch$
*/
@Entity
@Table(name = "questions")
public class Question implements Serializable {
    
    /**
     * Identificador único para a pergunta sobre o personagem bíblico.
     */
    @Id
    @Column(name = "question")
    private UUID id;

    /**
     * {@link Card}
     */
    @ManyToOne
    @JoinColumn(name = "card")
    @JsonIgnoreProperties("questions")
    private Card card;

    /**
     * Texto da pergunta sobre o personagem bíblico.
     */
    @Column
    private String text;

    /**
     * Evidência de resposta sobre o personagem bíblico.
     */
    @Column
    private String evidence;

    /**
     * Construtor padrão.
     */
    public Question() {
    }

    /**
     * @return {@link #id}
     */
    public UUID getId() {
        return id;
    }

    /**
     * @param id {@link #id}
     */
    public void setId(UUID id) {
        this.id = id;
    }

    /**
     * @return {@link Card}
     */
    public Card getCard() {
        return card;
    }

    /**
     * @param card {@link Card}
     */
    public void setCard(Card card) {
        this.card = card;
    }

    /**
     * @return {@link #text}
     */
    public String getText() {
        return text;
    }

    /**
     * @param text {@link #text}
     */
    public void setText(String text) {
        this.text = text;
    }

    /**
     * @return {@link #evidence}
     */
    public String getEvidence() {
        return evidence;
    }

    /**
     * @param evidence {@link #evidence}
     */
    public void setEvidence(String evidence) {
        this.evidence = evidence;
    }

    /* (non-Javadoc)
     * @see java.lang.Object#hashCode()
     */
    
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((id == null) ? 0 : id.hashCode());
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
        Question other = (Question) obj;
        if (id == null) {
            if (other.id != null)
                return false;
        } else if (!id.equals(other.id))
            return false;
        return true;
    }

    /* (non-Javadoc)
     * @see java.lang.Object#toString()
     */
    
    @Override
    public String toString() {
        return String.format("%s[id=%s, text=%s, evidence=%s, card=%s]",
            this.getClass().getSimpleName(),
            id,
            text,
            evidence,
            card);
    }
}
