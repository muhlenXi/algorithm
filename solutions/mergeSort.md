版权声明：本文为 [muhlenXi](http://www.muhlenxi.com) 原创文章，未经博主允许不得转载，如有问题，欢迎指正。

## 归并排序

[归并排序](https://zh.wikipedia.org/wiki/%E5%BD%92%E5%B9%B6%E6%8E%92%E5%BA%8F) （Merge Sort）是由 冯·诺伊曼 在 1945 年提出的算法。该算法是 分治法 （Divide and Conquer）策略的代表之一。


归并排序的核心思想是: 首先不断的将数组分为两个部分，直到每个部分包含一个元素为止，然后依次将两个部分合并到一起。

一个长度为 **n** 的序列，最坏和最好的情况下复杂度均为 **O(n log n)**。

## 算法分析

编写归并排序的算法主要有 2 个步骤：

- 1、编写 mergeTwoSortedArray 方法，该方法的功能是将两个有序的数组合并成一个有序数组。
- 2、编写归并排序方法，该方法将数组分为两个部分，对左边部分数组递归排序，对右边部分数组递归排序，然后调用 `mergeTwoSortedArray` 方法将左、右数组合并成一个数组。

编写递归代码的关键在于：要找到通项公式和递归终止条件。

## 算法实现

用 Swift 实现的算法如下：

```swift
/// 合并两个有序数组
func mergeTwoSortedArray(firstArray: [Int], secondArray: [Int]) -> [Int] {
    guard firstArray.count > 0 else {
        return secondArray
    }
    
    guard secondArray.count > 0 else {
        return firstArray
    }
    
    var result = [Int]()
    var firstIndex = 0
    var secondIndex = 0
    while firstIndex < firstArray.count && secondIndex < secondArray.count {
        let firstValue = firstArray[firstIndex]
        let secondValue = secondArray[secondIndex]
        if firstValue < secondValue {
            result.append(firstValue)
            firstIndex += 1
        } else {
            result.append(secondValue)
            secondIndex += 1
        }
    }
    
    if firstIndex < firstArray.count {
        result.append(contentsOf: firstArray[firstIndex..<firstArray.count])
    }
    if secondIndex < secondArray.count {
        result.append(contentsOf: secondArray[secondIndex..<secondArray.count])
    }
    
    return result
}

/// 递归排序 分而治之
func mergeSort(array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    
    let mid = array.count / 2
    let leftArray = mergeSort(array: Array(array[0..<mid]))
    let rightArray = mergeSort(array: Array(array[mid..<array.count]))
    
    return mergeTwoSortedArray(firstArray: leftArray, secondArray: rightArray)
}

```

用 Objective-C 实现的算法如下：

```objc
/// 归并排序
- (NSArray*) mergeSort: (NSArray *) unsortedArray {
    if (unsortedArray.count <= 1) {
        return unsortedArray;
    }
    // 拆分
    NSInteger mid = unsortedArray.count / 2;
    NSArray *leftArray = [self mergeSort:[unsortedArray subarrayWithRange:NSMakeRange(0, mid)]];
    NSArray *rightArray = [self mergeSort:[unsortedArray subarrayWithRange:NSMakeRange(mid, unsortedArray.count-mid)]];
    // 合并
    NSInteger leftIndex = 0;
    NSInteger rightIndex = 0;
    NSMutableArray *sortedArrray = [NSMutableArray array];
    while (leftIndex < leftArray.count && rightIndex < rightArray.count) {
        if ([leftArray[leftIndex] integerValue] > [rightArray[rightIndex] integerValue]){
            [sortedArrray addObject:rightArray[rightIndex]];
            rightIndex++;
        } else {
            [sortedArrray addObject:leftArray[leftIndex]];
            leftIndex++;
        }
    }
    // 添加左边剩余元素
    if (leftIndex < leftArray.count) {
        [sortedArrray addObjectsFromArray:[leftArray subarrayWithRange:NSMakeRange(leftIndex, leftArray.count-leftIndex)]];
    }
    // 添加右边剩余元素
    if (rightIndex < rightArray.count) {
        [sortedArrray addObjectsFromArray:[rightArray subarrayWithRange:NSMakeRange(rightIndex, rightArray.count-rightIndex)]];
    }
    
    return sortedArrray;
}
```

用 Java 实现的算法如下：

```java
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
```


## 算法验证

```swift
var list = [2, 3, 5, 7, 4, 8, 6 ,10 ,1, 9]
// 将会打印 [2, 3, 5, 7, 4, 8, 6 ,10 ,1, 9]
print(list)
// 将会打印归并排序后的序列 [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(mergeSort(array: list))
```

## 算法总结

`稳定性`：稳定算法，序列分割的时候可能将相同元素分到不同组中，但是合并的时候相同元素的相对位置不会改变。

`空间复杂度`：额外需要一个数组来保存排序结果，所以为 **O(n)**。

`时间复杂度`：最好最坏都为 **O(nlogn)**。

`缺点`：不能对数组原地排序，创建一个新的数组。

