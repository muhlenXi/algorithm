//
//  Test.m
//  OCTest
//
//  Created by muhlenXi on 2019/3/25.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

#import "Test.h"

@implementation Test

- (void)test {
    NSString *input = @"abbcccddeee";
    NSLog(@"%@",[self stringCompression:input]);
}


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


@end
