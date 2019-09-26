//
//  Person.m
//  HelloSingleViewApp
//
//  Created by muhlenXi on 2019/9/26.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

#import "Person.h"

@implementation Target_Person

- (void)Action_sayHello:(NSDictionary *)info{
    NSLog(@"Hello, %@", info[@"name"]);
}

- (BOOL)Action_checkIsMen {
    return YES;
}

- (NSUInteger)Action_calculateAge {
    return 18;
}

- (NSInteger)Action_calculateMath {
    return 78;
}

@end
