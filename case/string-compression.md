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

```swift
func stringCompression(input: String) -> String {
        var output = ""
        
        var current = 0
        var next = 0
        var repeatCount = 0
        
        while current < input.count {
            repeatCount = 1
            next = current + 1
            
            while next < input.count {
                if input[String.Index(encodedOffset: current)] == input[String.Index(encodedOffset: next)] {
                    repeatCount += 1
                    current += 1
                } else {
                    break
                }
                next += 1
            }
            
            output.append(input[String.Index(encodedOffset: current)])
            output.append("\(repeatCount)")
            
            current += 1
        }
        
        print(output)
        return output
    }
```
