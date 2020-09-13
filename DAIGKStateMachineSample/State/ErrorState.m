//
//  ErrorState.m
//  DAIGKStateMachineSample
//
//  Created by DaiDai on 2020/8/28.
//  Copyright © 2020 DaiDai. All rights reserved.
//

#import "ErrorState.h"
#import "StartLoginState.h"

@implementation ErrorState

- (BOOL)isValidNextState:(Class)stateClass {
    
    return stateClass == [StartLoginState class];
}

- (void)didEnterWithPreviousState:(GKState *)previousState {
    
    UIAlertController *alert = [UIAlertController
                                alertControllerWithTitle:@"Message"
                                message:@"Account is incorrect"
                                preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction
                               actionWithTitle:@"OK"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
        
        [alert dismissViewControllerAnimated:NO completion:nil];
        [self.stateMachine enterState:[StartLoginState class]];
    }];
    [alert addAction:okAction];
    
    [self.viewController presentViewController:alert animated:YES completion:nil];
}

@end
