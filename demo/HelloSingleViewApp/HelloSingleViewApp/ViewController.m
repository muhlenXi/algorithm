//
//  ViewController.m
//  HelloSingleViewApp
//
//  Created by muhlenXi on 2019/9/26.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

#import "ViewController.h"
#import "Mediator.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"name"] = @"bobo";
    
    Target_Person *person = [[Target_Person alloc] init];
    //NSLog(@"%@", NSStringFromClass([Target_Person class]));
    //NSLog(@"%@", NSStringFromSelector(@selector(Action_sayHello:)));
    
    id result = [[Mediator sharedInstance] performTarget:@"Person" action:@"checkIsMen" params:params shouldCacheTarget:NO];
    NSLog(@"%@", result);
}


@end
