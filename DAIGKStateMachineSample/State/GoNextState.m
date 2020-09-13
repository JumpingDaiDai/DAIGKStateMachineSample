//
//  GoNextState.m
//  DAIGKStateMachineSample
//
//  Created by DaiDai on 2020/8/28.
//  Copyright © 2020 DaiDai. All rights reserved.
//

#import "GoNextState.h"
#import "NextViewController.h"

@implementation GoNextState

- (void)didEnterWithPreviousState:(GKState *)previousState {
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    NextViewController *vc = [sb instantiateViewControllerWithIdentifier:@"NextViewController"];
    
    [self.viewController.navigationController pushViewController:vc animated:YES];
}

@end
