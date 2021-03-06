package compareutils;

import java.util.Arrays;
import java.util.Comparator;

/**
 * @author Alexey Ushakov
 */
public class CompareUtils {
    private CompareUtils() {
    }

    private static <T extends Comparable> T getElementByIndex(T[] array, int index) {
        if (array != null && array.length > 0) {
            T[] newArray = Arrays.copyOf(array, array.length);
            Arrays.sort(newArray);
            return newArray[index];
        }
        return null;
    }

    public static <T extends Comparable> T min(T[] array) {
        return getElementByIndex(array, 0);
    }

    public static <T extends Comparable> T max(T[] array) {
        return getElementByIndex(array, array.length - 1);
    }

    public static <T extends Comparable> T median(T[] array) {
        return getElementByIndex(array, (array.length - 1) / 2);
    }

    private static <T> T[] getNewSortedArray(T[] array, Comparator<T> comparator) {
        T[] newArray = Arrays.copyOf(array, array.length);
        Arrays.sort(newArray, comparator);
        return newArray;
    }

    public static <T> T min(T[] array, Comparator<T> comparator) {
        if (array != null && array.length > 0) {
            T[] newArray = getNewSortedArray(array, comparator);
            if (comparator.compare(newArray[0], newArray[newArray.length - 1]) > 0) {
                return newArray[newArray.length - 1];
            } else {
                return newArray[0];
            }
        }
        return null;
    }

    public static <T> T max(T[] array, Comparator<T> comparator) {
        if (array != null && array.length > 0) {
            T[] newArray = getNewSortedArray(array, comparator);
            if (comparator.compare(newArray[0], newArray[newArray.length - 1]) < 0) {
                return newArray[newArray.length - 1];
            } else {
                return newArray[0];
            }
        }
        return null;
    }

    public static <T> T median(T[] array, Comparator<T> comparator) {
        if (array != null && array.length > 0) {
            T[] newArray = getNewSortedArray(array, comparator);
            return newArray[(newArray.length - 1) / 2];
        }
        return null;
    }

}
