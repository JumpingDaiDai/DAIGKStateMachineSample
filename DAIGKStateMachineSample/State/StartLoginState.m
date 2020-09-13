//
//  StartLoginState.m
//  DAIGKStateMachineSample
//
//  Created by DaiDai on 2020/8/27.
//  Copyright © 2020 DaiDai. All rights reserved.
//

#import "StartLoginState.h"
#import "LoginState.h"
#import "ErrorState.h"

@implementation StartLoginState

- (BOOL)isValidNextState:(Class)stateClass {
    
    return stateClass == [LoginState class];
}

- (void)didEnterWithPreviousState:(nullable GKState *)previousState {

    [self stateSetup];
}

- (void)willExitWithNextState:(GKState *)nextState {
    
    [self.viewController.loginButton removeTarget:nil
                                           action:NULL
                                 forControlEvents:UIControlEventAllEvents];
}

- (void)stateSetup {
    
    [self.viewController.loginButton addTarget:self
                                        action:@selector(loginButtonIsPressed:)
                              forControlEvents:UIControlEventTouchUpInside];
}

- (void)loginButtonIsPressed:(UIButton *)sender {
    
    LoginState *state = (LoginState *)[self.stateMachine stateForClass:[LoginState class]];
    state.account = self.viewController.inputTextField.text;
    [self.stateMachine enterState:[LoginState class]];
}

@end
