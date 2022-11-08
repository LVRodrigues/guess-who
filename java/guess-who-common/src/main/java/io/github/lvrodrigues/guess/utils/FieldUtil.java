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
     * Prepara a ordenação para consulta dos registros.
     *
     * @param clazz Classe do tipo de objeto para validar os nomes de campos.
     * @param fieldnames Lista de campos para ordenação. Campos que iniciem com um hífem (-) serão
     * ordenados de modo descendente. 
     * @return Lista de ordenação para as consultas.
     */
    public static <T> Sort sort(Class<T> clazz, String fieldnames) {
        String[] fields = fieldnames.split(FIELD_SEPERATOR);
        Sort result = Sort.unsorted();
        for (String field : fields) {
            try {
                clazz.getDeclaredField(field);
            } catch (NoSuchFieldException | SecurityException e) {
                throw new SortException(String.format("Sort name \"%s\" is invalid.", field));
            }
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
     * @param clazz Classe do tipo de objeto para validar os nomes de campos.
     * @param page Página de resposta.
     * @param fieldnames Lista de campos para conter na resposta. Se for vazio, conterá todos os campos.
     */
    public static <T> void filter(Class<T> clazz, Page<T> page, String fieldnames) {
        if (fieldnames.isBlank()) {
            return;
        }
        Field[] fields = clazz.getDeclaredFields();
        String[] names = fieldnames.split(FIELD_SEPERATOR);
        Arrays.sort(names);
        for (String name : names) {
            try {
                clazz.getDeclaredField(name);
            } catch (NoSuchFieldException | SecurityException e) {
                throw new FieldsException(String.format("Field name \"%s\" is invalid.", name));
            }
        }
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
