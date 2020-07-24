//
//  NSObject+Runtime.h
//  KVCDEMO
//
//  Created by DengJinHui on 2020/7/24.
//  Copyright © 2020 LKL. All rights reserved.
//


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Runtime)
//打印成员变量列表

-(void)printIvarList;

-(void)printPropertityList;
@end

NS_ASSUME_NONNULL_END
