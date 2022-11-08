package io.github.lvrodrigues.guess.utils;

import java.lang.reflect.Field;
import java.util.Arrays;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;

import io.github.lvrodrigues.guess.exceptions.FieldsException;
import io.github.lvrodrigues.guess.exceptions.SortException;

/**
 * Utilitário para manipular o parâmetro nas consultas.
 *
 * @since 08/11/2022
 * @author $Author$
 * @author $Committer$
 * @branch $Branch$
 */
public final class FieldUtil {

    /**
     * Separador de campos.
     */
    private static final String FIELD_SEPERATOR = ",";

    /**
     * Sinalizador de ordenação desdencente.
     */
    private static final String SORT_DESCEND_SIGNAL = "-";
    
    /**
     * Construtor oculto para transformar a classe em utilitária.
     */
    private FieldUtil() {
    }

    /**
     * Verifica se os nomes dos campos passados por parâmetros são válidos.
     *
     * @param clazz Classe para validar os nomes dos campos.
     * @param sort Lista de campos para ordenação.
     * @param fieldnames Lista de campos para filtrar a resposta.
     */
    public static void validateParams(Class<?> clazz, String sort, String fieldnames) {
        String[] names;
        names = sort.split(FIELD_SEPERATOR);
        for (String name : names) {
            try {
                clazz.getDeclaredField(name);
            } catch (NoSuchFieldException | SecurityException e) {
                throw new SortException(String.format("Sort name \"%s\" is invalid.", name));
            }
        }
        names = fieldnames.split(FIELD_SEPERATOR);
        for (String name : names) {
            try {
                clazz.getDeclaredField(name);
            } catch (NoSuchFieldException | SecurityException e) {
                throw new FieldsException(String.format("Field name \"%s\" is invalid.", name));
            }
        }
    }

    /**
     * Prepara a ordenação para consulta dos registros.
     *
     * @param fieldnames Lista de campos para ordenação. Campos que iniciem com um
     *                   hífem (-) serão ordenados de modo descendente.
     * @return Lista de ordenação para as consultas.
     */
    public static Sort sort(String fieldnames) {
        String[] fields = fieldnames.split(FIELD_SEPERATOR);
        Sort result = Sort.unsorted();
        for (String field : fields) {
            Direction direction = Direction.ASC;
            if (field.startsWith(SORT_DESCEND_SIGNAL)) {
                direction   = Direction.DESC;
                field       = field.substring(SORT_DESCEND_SIGNAL.length());
            }
            result = result.and(Sort.by(direction, field));
        }
        return result;
    }

    /**
     * Manipula os campos de resposta para conter apenas os campos selecionados.
     *
     * Campos removidos são atribuídos com valores nulos.
     *
     * @param page Página de resposta.
     * @param fieldnames Lista de campos para conter na resposta. Se for vazio, conterá todos os campos.
     */
    public static void filter(Page<?> page, String fieldnames) {
        if (fieldnames.isBlank() || page.getContent().isEmpty()) {
            return;
        }
        Field[] fields = page.getContent().get(0).getClass().getDeclaredFields();
        String[] names = fieldnames.split(FIELD_SEPERATOR);
        Arrays.sort(names);
        for (Object item : page.getContent()) {
            for (Field field : fields) {
                if (Arrays.binarySearch(names, field.getName()) >= 0) {
                    continue;
                }
                try {
                    field.setAccessible(true);
                    field.set(item, null);
                } catch (IllegalArgumentException | IllegalAccessException e) {
                    throw new FieldsException(e.getLocalizedMessage());
                }
            }
        }
    }
}
