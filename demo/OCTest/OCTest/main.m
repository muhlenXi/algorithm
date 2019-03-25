//
//  main.m
//  OCTest
//
//  Created by muhlenXi on 2019/3/25.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Test.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        [[[Test alloc] init] test];
        
    }
    return 0;
}
