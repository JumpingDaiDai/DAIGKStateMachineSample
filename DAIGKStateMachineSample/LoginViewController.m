//
//  LoginViewController.m
//  DAIGKStateMachineSample
//
//  Created by DaiDai on 2020/8/27.
//  Copyright © 2020 DaiDai. All rights reserved.
//

#import "LoginViewController.h"
#import "StartLoginState.h"
#import "LoginState.h"
#import "ErrorState.h"
#import "GoNextState.h"

@interface LoginViewController ()

@property (strong, nonatomic) GKStateMachine *stateMachine;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.stateMachine = [GKStateMachine stateMachineWithStates:@[
        [StartLoginState stateWithViewController:self],
        [LoginState stateWithViewController:self],
        [ErrorState stateWithViewController:self],
        [GoNextState stateWithViewController:self]
    ]];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.stateMachine enterState:[StartLoginState class]];
}


@end
