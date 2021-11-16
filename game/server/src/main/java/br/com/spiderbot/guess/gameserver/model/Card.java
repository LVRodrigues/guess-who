package br.com.spiderbot.guess.gameserver.model;

import java.io.Serializable;
import java.util.List;
import java.util.UUID;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
* Cartão de informações sobre um personagem bíblico.

* @author <a href="mailto:lvrodrigues@spiderbot.com.br">Luciano Vieira Rodrigues</a>
* @since 16/11/2021
* @author $$Author$$
* @version $$Revision$$ - $$Date$$
*/
@Entity
@Table(name = "cards")
public class Card implements Serializable {
    
    /**
     * Identificador único do cartão de personagem bíblico.
     */
    @Id
    @Column(name = "card")
    private UUID id;

    /**
     * Nome do personagem bíblico.
     */
    @Column
    private String name;

    /**
     * Imagem do cartão.
     */
    @Lob
    @Column
    @Basic(fetch = FetchType.LAZY)
    private byte[] image;

    /**
     * Perguntas sobre o personagem bíblico.
     */
    @OneToMany(mappedBy = "card", fetch = FetchType.LAZY)
    private List<Question> questions;

    /**
     * Construtor padrão.
     */
    public Card() {
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
     * @return {@link #name}
     */
    public String getName() {
        return name;
    }

    /**
     * @param name {@link #name}
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return {@link #image}
     */
    public byte[] getImage() {
        return image;
    }

    /**
     * @param image {@link #image}
     */
    public void setImage(byte[] image) {
        this.image = image;
    }

    /**
     * @return {@link #questions}
     */
    public List<Question> getQuestions() {
        return questions;
    }

    /**
     * @param questions {@link #questions}
     */
    public void setQuestions(List<Question> questions) {
        this.questions = questions;
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
        Card other = (Card) obj;
        if (id == null) {
            if (other.id != null)
                return false;
        } else if (!id.equals(other.id))
            return false;
        return true;
    }

    @Override
    public String toString() {
        return String.format("%s[id=%s, name=%s, questions=%d]", 
            this.getClass().getSimpleName(),
            id,
            name,
            questions.size());
    }
}
