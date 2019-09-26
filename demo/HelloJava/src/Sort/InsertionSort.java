package Sort;

public class InsertionSort {
    public static void main() {
        int[] array = {4, 2, 5, 3, 1};

        for (int i:array) {
            System.out.println(i);
        }

        insertionSort(array);

        for (int i:array) {
            System.out.println(i);
        }
    }

    static void insertionSort(int[] array) {
        for(int i = 0; i < array.length;i ++) {
            int currentIndex = i;
            while(currentIndex > 0) {
                if(array[currentIndex-1] > array[currentIndex]){
                    int temp = array[currentIndex-1];
                    array[currentIndex-1] = array[currentIndex];
                    array[currentIndex] = temp;
                }
                currentIndex -= 1;
            }
        }
    }
}
