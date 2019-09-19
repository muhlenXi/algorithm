package Sort;

public class SelectionSort {
    public static void main() {
        int[] array = {3, 5, 2, 4 , 1};

        int[] sorted = selectionSort(array);
        for(int value: sorted) {
            System.out.println(value);
        }

    }

    public static int[] selectionSort(int[] array) {
        if(array.length < 2) {
            return array;
        }

        int[] result = array;
        for(int i = 0; i < result.length; i ++) {
            int minValueIndex = i;
            for(int j = i + 1; j < result.length; j++) {
                if (result[j] < result[minValueIndex]) {
                    minValueIndex = j;
                }
            }
            if(minValueIndex != i) {
                int temp = result[minValueIndex];
                result[minValueIndex] = result[i];
                result[i] = temp;
            }
        }
        return result;
    }
}
