package io.github.lvrodrigues.guess.model;

import java.io.Serializable;
import java.util.List;
import java.util.UUID;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.hateoas.RepresentationModel;
import org.springframework.hateoas.server.core.Relation;
import org.springframework.lang.Nullable;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;

/**
 * Cartão de informações sobre um personagem bíblico. 
 *
 * @since 21/06/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
@Entity
@Table(name = "cards")
@Relation(collectionRelation = "cards", itemRelation = "card")
public class Card extends RepresentationModel<Card> implements Serializable, Cloneable {
    
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
     * Expressão fonética para identificar o nome do personagem.
     */
    @Column
    private String phoneme;

    /**
     * Imagem do cartão.
     */
    @Column
    @Basic(fetch = FetchType.LAZY)
    private String image;

    /**
     * Perguntas sobre o personagem bíblico.
     */
    @OneToMany(mappedBy = "card", fetch = FetchType.LAZY)
    @JsonIgnoreProperties("card")
    private List<Question> questions;

    /**
     * Construtor padrão.
     */
    public Card() {
    }

    /**
     * Recuperar o {@link #id}.
     *
     * @return {@link #id}
     */
    public UUID getId() {
        return id;
    }

    /**
     * Atribuir o {@link #id}.
     *
     * @param id {@link #id}
     */
    public void setId(UUID id) {
        this.id = id;
    }

    /**
     * Recuperar o {@link #name}.
     *
     * @return {@link #name}
     */
    public String getName() {
        return name;
    }

    /**
     * Atribuir o {@link #name}.
     *
     * @param name {@link #name}
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * Recuperar o {@link #phoneme}.
     *
     * @return {@link #phoneme}
     */
    public String getPhoneme() {
        return phoneme;
    }

    /**
     * Atribuir o {@link #phoneme}.
     *
     * @param phoneme {@link #phoneme}
     */
    public void setPhoneme(String phoneme) {
        this.phoneme = phoneme;
    }

    /**
     * Recuperar o {@link #image}.
     *
     * @return {@link #image}
     */
    public String getImage() {
        return image;
    }

    /**
     * Atribuir o {@link #image}.
     *
     * @param image {@link #image}
     */
    public void setImage(String image) {
        this.image = image;
    }

    /**
     * Recuperar a lista de {@link #questions}.
     *
     * @return {@link #questions}
     */
    public List<Question> getQuestions() {
        if (questions == null) {
            return null;
        } else {
            return questions.stream().toList();
        }
    }

    /**
     * Atribuir a lista de {@link #questions}.
     *
     * @param questions {@link #questions}
     */
    public void setQuestions(List<Question> questions) {
        if (questions == null) {
            this.questions = null;
        } else {
            this.questions = questions.stream().toList();
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
        result = prime * result + ((id == null) ? 0 : id.hashCode());
        return result;
    }

    /* (non-Javadoc)
     * @see java.lang.Object#equals(java.lang.Object)
     */
    @Override
    @SuppressFBWarnings("NP_METHOD_PARAMETER_TIGHTENS_ANNOTATION")
    public boolean equals(@Nullable Object obj) {
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
    //CHECKSTYLE:ON

    @Override
    public String toString() {
        return String.format("%s[id=%s, name=%s, questions=%d]", 
            this.getClass().getSimpleName(),
            id,
            name,
            questions.size());
    }

    @Override
    protected Object clone() throws CloneNotSupportedException {
        return super.clone();
    }
}
