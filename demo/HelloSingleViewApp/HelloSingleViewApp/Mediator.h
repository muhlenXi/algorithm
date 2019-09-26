//
//  Mediator.h
//  HelloSingleViewApp
//
//  Created by muhlenXi on 2019/9/26.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString * const kMediatorParamsKeySwiftTargetModuleName;

NS_ASSUME_NONNULL_BEGIN

@interface Mediator : NSObject

+ (instancetype)sharedInstance;

- (id)performActionWithUrl:(NSURL *) url completion:(void(^)(NSDictionary *info))completion;

- (id)performTarget:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params shouldCacheTarget:(BOOL)shouldCacheTarget;

- (void)releaseCachedTargetWithTargetName:(NSString *)targetName;



@end

NS_ASSUME_NONNULL_END
