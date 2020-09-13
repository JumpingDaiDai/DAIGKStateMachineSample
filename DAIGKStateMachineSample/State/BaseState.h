//
//  BaseState.h
//  DAIGKStateMachineSample
//
//  Created by DaiDai on 2020/8/27.
//  Copyright © 2020 DaiDai. All rights reserved.
//

#import <GameplayKit/GameplayKit.h>
#import "LoginViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseState : GKState

@property (nonatomic, weak, readonly) LoginViewController *viewController;
@property (nonatomic, weak, readonly) UIView *view;

+ (instancetype)stateWithViewController:(LoginViewController *)viewController;
- (instancetype)initWithViewController:(LoginViewController *)viewController;

@end

NS_ASSUME_NONNULL_END
