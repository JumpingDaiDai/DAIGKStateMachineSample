//
//  LoginState.h
//  DAIGKStateMachineSample
//
//  Created by DaiDai on 2020/8/28.
//  Copyright © 2020 DaiDai. All rights reserved.
//

#import "BaseState.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginState : BaseState

@property (nonatomic, strong) NSString *account;

@end

NS_ASSUME_NONNULL_END
