package Sort;

public class MergeSort {

    public static void main() {
        int[] numbers = {4, 3, 8, 5, 7, 6};
        mergeSort(numbers, 0, numbers.length-1);

        for(int n: numbers) {
            System.out.println(n);
        }

    }

    // 归并排序
    public static void mergeSort(int[] numbers, int low, int high) {
        if(low < high) {
            int middle = low + (high-low)/2;
            // 拆分左边数组
            mergeSort(numbers, low, middle);
            // 拆分右边数组
            mergeSort(numbers, middle+1, high);
            // 合并数组
            merge(numbers, low, middle, high);
        }
    }

    /// 合并数组
    public static void merge(int[] numbers, int low, int middle, int high) {
        int[] helper = new int[high+1];
        for(int i = low; i <= high; i++) {
            helper[i] =  numbers[i];
        }

        int i = low;
        int j = middle + 1;
        int k = low;

        while(i <= middle && j <= high) {
            if (helper[i] <= helper[j]) {
                numbers[k] = helper[i];
                i++;
            } else {
                numbers[k] = helper[j];
                j++;
            }
            k++;
        }

        while (i <= middle) {
            numbers[k] = helper[i];
            i++;
            k++;
        }
    }
}
