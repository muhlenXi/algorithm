### 字符串压缩

输入：abbaaaccdddde
输出：a1b2a3c2d4e1

### 方法

#### Objective-C

```objc
- (NSString *)stringCompression:(NSString *)input {
    NSMutableString *output = [[NSMutableString alloc] init];
    
    NSUInteger current = 0;
    NSUInteger next = 0;
    NSUInteger repeatCount = 0;
    
    while (current < input.length) {
        repeatCount = 1;
        next = next + 1;
        
        while (next < input.length) {
            if ([input characterAtIndex:current] == [input characterAtIndex:next]) {
                repeatCount  = repeatCount + 1;
                next = next + 1;
                current = current + 1;
            } else {
                break;
            }
        }
        
        [output appendFormat:@"%c%ld",[input characterAtIndex:current], repeatCount];
        current = current + 1;
    }
    
    return output;
}
```

#### Swift