#### Swift

```swift
func reverseValue(x: Int) -> Int {
    var value = ""
    for element in "\(abs(x))" {
        value.insert(element, at: String.Index(encodedOffset: 0))
    }
    var output = Int(value)!
    if x < 0 {
        output = -output
    }
    if output > Int32.max || output < Int32.min {
        return 0
    } else {
        return output
    }
}

```

#### Objective-C

```objc
- (NSInteger) reverseInteger: (NSInteger) input {
    NSString *inputString = [[NSString alloc] initWithFormat:@"%ld", labs(input)];
    NSMutableString *output = [@"" mutableCopy];
    for (NSUInteger i = 0; i < inputString.length; i++) {
        [output appendFormat:@"%c",[inputString characterAtIndex:inputString.length-1-i]];
    }
    
    if (input < 0) {
        [output insertString:@"-" atIndex:0];
    }
    
    if ([output integerValue] > INT32_MAX || [output integerValue] < INT32_MIN) {
        return 0;
    } else {
        return [output integerValue];
    }
}
```