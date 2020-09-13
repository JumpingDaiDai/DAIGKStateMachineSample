//
//  BaseState.m
//  DAIGKStateMachineSample
//
//  Created by DaiDai on 2020/8/27.
//  Copyright © 2020 DaiDai. All rights reserved.
//

#import "BaseState.h"

@implementation BaseState

+ (instancetype)stateWithViewController:(LoginViewController *)viewController {
    
    return [[self alloc] initWithViewController:viewController];
}

- (instancetype)initWithViewController:(LoginViewController *)viewController {
    
    self = [super init];
    if (self) {
        
        _viewController = viewController;
    }
    return self;
}

- (UIView *)view {
    
    return self.viewController.view;
}

@end
