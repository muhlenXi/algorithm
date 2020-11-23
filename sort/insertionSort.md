版权声明：本文为 [muhlenXi](http://www.muhlenxi.com) 原创文章，转载需要注明作者和来源，如有问题，欢迎指正。

# 插入排序

[插入排序](https://zh.wikipedia.org/wiki/%E6%8F%92%E5%85%A5%E6%8E%92%E5%BA%8F)（Insertion Sort） 是一种简单直观的排序算法。

插入排序的灵感可能来自于我们玩牌的经验。当我们摸牌的时候，每摸到一张牌，都会将这张牌插入到其他有序的牌中的适当位置。

排序算法（默认是升序）的原理是，计算机在遍历数组中的元素时，认为当前索引左边的元素都是有序的。首先在左边有序的数组中从后往前找出当前数组应该插入的位置，然后依次挪动左边有序元素，给要插入的元素腾出位置，最后将该元素插入到腾空的位置。循环往复，直到数组完成排序。

除此之外，还有一种方法也可以做到。就是遍历到当前元素时，重新开始一个循环，依次比较当前元素与前一个元素的值大小，如果不满足排序条件，则交换这两个元素，然后下标递减，直到当前元素的下标是 0 或者 当前元素处于合适的排序位置（比如升序排序，当前元素比前一个元素值大，比后一个元素值小）。


对于长度为 **n**  的数组，选择排序需要大约  **n^2/2** 次比较和 **n^2/2** 次交换。

## 算法分析

插入算法的关键是遍历过程中，要把当前元素放到左边元素合适的位置上。

## 算法实现

用 Swift 实现的插入排序代码如下所示：


```swift
func insertionSort(array: inout [Int]){
    guard array.count > 1 else {
        return
    }
    
    for index in 1..<array.count {
        var currentIndex = index
        while currentIndex > 0 {
            if array[currentIndex-1] > array[currentIndex] {
                let temp = array[currentIndex-1]
                array[currentIndex-1] = array[currentIndex]
                array[currentIndex] = temp
            }
            currentIndex -= 1
        }
    }}
```


用 Objective-C 实现的算法如下：

```objc
/// 利用交换代替插入
- (NSArray *) insertionSort: (NSArray *) unsortedArray {
    if (unsortedArray.count < 2) {
        return unsortedArray;
    }
    
    NSMutableArray *sortedArray = [unsortedArray mutableCopy];
    for (NSInteger i = 1; i < sortedArray.count; i++) {
        NSInteger j = i - 1;
        while (j >= 0 && [sortedArray[j] integerValue] > [sortedArray[j+1] integerValue]) {
            [sortedArray exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            j--;
        }
    }
    
    return [sortedArray copy];
}
```

用 Java 实现的算法如下：

```java
static void insertionSort(int[] array) {
    for(int i = 1; i < array.length;i ++) {
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
```

## 验证算法

```swift
var list = [2, 3, 5, 7, 4, 8, 6 ,10 ,1, 9]
// 将会打印 [2, 3, 5, 7, 4, 8, 6 ,10 ,1, 9]
print(list) 
// 用算法一进行插入排序
insertionSort(array: &list)
// 将会打印 [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print(list) 
```

## 算法总结

`稳定性` ：是稳定算法，因为排序过程中相邻会依次比较，不会打乱相同元素的相对位置。

`空间复杂度`：整个排序过程是在原数组上进行排序的，所以是 O(1)。

`时间复杂度`：排序算法包含双层嵌套循环，故为 O（n^2）。

## 应用

插入排序适合于部分有序的数组。