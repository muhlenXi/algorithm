#### Swift

```swift
func isPalindrome(_ x: Int) -> Bool {
    let input = "\(x)"
    var reverse = ""
    
    var current = 0
    while current < input.count {
        reverse.append(input[String.Index(encodedOffset: input.count-1-current)])
        current += 1
    }
    
    return input == reverse
}
```

#### Objective-C

```objc
- (BOOL) isPalindrome: (NSInteger) x {
    NSString *input = [[NSString alloc] initWithFormat:@"%ld",x];
    NSMutableString *output = [@"" mutableCopy];
    for (NSUInteger i = 0; i < [input length]; i++) {
        [output appendFormat:@"%c", [input characterAtIndex:input.length-1-i]];
    }
    return [input isEqual:output];
}
```