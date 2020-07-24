//
//  Person.h
//  KVCDEMO
//
//  Created by DengJinHui on 2020/7/24.
//  Copyright © 2020 LKL. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property(nonatomic,copy)NSString * name;
@property(nonatomic,copy)NSString * _hobby;
-(void)_setName:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
