//
//  LoginState.m
//  DAIGKStateMachineSample
//
//  Created by DaiDai on 2020/8/28.
//  Copyright © 2020 DaiDai. All rights reserved.
//

#import "LoginState.h"
#import "ErrorState.h"
#import "GoNextState.h"

NSString * const CORRECT_ACCOUNT = @"1111";

@implementation LoginState

- (BOOL)isValidNextState:(Class)stateClass {
    
    return stateClass == [ErrorState class] || stateClass == [GoNextState class];
}

- (void)didEnterWithPreviousState:(GKState *)previousState {
    
    // correct
    if ([self checkAccount:self.account]) {
        
        [self.stateMachine enterState:[GoNextState class]];
    }
    // incorrect
    else {
        
        [self.stateMachine enterState:[ErrorState class]];
    }
}

- (BOOL)checkAccount:(NSString *)account {
    
    return [account isEqualToString:CORRECT_ACCOUNT];
}

@end
