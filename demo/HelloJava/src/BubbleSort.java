public class BubbleSort {
    public static void main() {
        int[] list = {2, 3, 5, 7, 4, 8, 6 ,10 ,1, 9};
        int[] newList = bubbleSort(list);

        for(int i = 0; i < newList.length; i++) {
            System.out.print(newList[i] + " ");
        }
    }

    static int[] bubbleSort(int[] array) {
        if(array.length < 2) {
            return array;
        }

        int[] result = array;

        for(int i = 0; i < result.length-1; i++) {
            boolean changed = false;
            for(int j = 0; j < result.length-1-i; j++) {
                if(result[j] > result[j+1]) {
                    int temp = result[j];
                    result[j] = result[j+1];
                    result[j+1] = temp;
                    changed = true;
                }
            }
            if(changed == false) {
                break;
            }
        }

        return result;
    }


}
