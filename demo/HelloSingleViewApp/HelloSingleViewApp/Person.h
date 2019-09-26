//
//  Person.h
//  HelloSingleViewApp
//
//  Created by muhlenXi on 2019/9/26.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_Person : NSObject

- (void)Action_sayHello:(NSDictionary *)info;

- (BOOL)Action_checkIsMen;

- (NSUInteger) Action_calculateAge;

- (NSInteger) Action_calculateMath;

@end

NS_ASSUME_NONNULL_END
