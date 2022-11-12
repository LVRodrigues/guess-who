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
        FieldUtil.validateParamsSort(clazz, sort);
        FieldUtil.validateParamsFieldnames(clazz, fieldnames);
    }

    /**
     * Verifica se os nomes dos campos passados por parâmetros são válidos.
     *
     * @param clazz Classe para validar os nomes dos campos.
     * @param fieldnames Lista de campos para filtrar a resposta.
     */    
    private static void validateParamsFieldnames(Class<?> clazz, String fieldnames) {
        if (fieldnames != null && !fieldnames.isBlank()) {
            String[] names = fieldnames.split(FIELD_SEPERATOR);
            for (String name : names) {
                try {
                    clazz.getDeclaredField(name);
                } catch (NoSuchFieldException | SecurityException e) {
                    throw new FieldsException(String.format("Field name \"%s\" is invalid.", name));
                }
            }
        }
    }

    /**
     * Verifica se os nomes dos campos passados por parâmetros são válidos.
     *
     * @param clazz Classe para validar os nomes dos campos.
     * @param sort Lista de campos para ordenação.
     */
    private static void validateParamsSort(Class<?> clazz, String sort) {
        if (sort != null && !sort.isBlank()) {
            String[] names = sort.split(FIELD_SEPERATOR);
            for (String name : names) {
                if (name.toUpperCase().equals(Direction.ASC.name()) || 
                        name.toUpperCase().equals(Direction.DESC.name())) {
                    continue;
                }
                try {
                    clazz.getDeclaredField(name);
                } catch (NoSuchFieldException | SecurityException e) {
                    throw new SortException(String.format("Sort name \"%s\" is invalid.", name));
                }
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
        Sort result = Sort.unsorted();
        if (fieldnames != null && !fieldnames.isBlank()) {
            String[] fields = fieldnames.split(FIELD_SEPERATOR);
            for (int i = 0; i < fields.length; i++) {
                if (fields[i].toUpperCase().equals(Direction.ASC.name()) || 
                        fields[i].toUpperCase().equals(Direction.DESC.name())) {
                    continue;
                }
                Direction direction;
                try {
                    direction = Direction.valueOf(fields[i + 1]);
                } catch (Exception e) {
                    direction = Direction.ASC;
                }
                result = result.and(Sort.by(direction, fields[i]));
            }
        }
        return result;
    }

    /**
     * Manipula os campos de resposta para conter apenas os campos selecionados.
     *
     * <p>Campos removidos são atribuídos com valores nulos.
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
