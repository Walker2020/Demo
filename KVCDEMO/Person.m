//
//  Person.m
//  KVCDEMO
//
//  Created by DengJinHui on 2020/7/24.
//  Copyright © 2020 LKL. All rights reserved.
//

#ifdef DEBUG

# define DebugLog(fmt, ...) NSLog((@"\n[文件名:%s]\n""[函数名:%s]\n""[行号:%d] \n" fmt), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);

#else

# define DebugLog(...);

#endif

#import "Person.h"
#import <objc/runtime.h>
#import "NSObject+Runtime.h"
@implementation Person


//-(void)setName:(NSString *)name {
//    _name = name;
//    NSLog(@"%s,%s,%d",__FILE__,__FUNCTION__,__LINE__);
//}

-(void)set_hobby:(NSString *)_hobby {
    __hobby = _hobby;
     NSLog(@"%s,%s,%d",__FILE__,__FUNCTION__,__LINE__);
}
-(void)_setName:(NSString *)name {
    _name = name;
    NSLog(@"%s,%s,%d",__FILE__,__FUNCTION__,__LINE__);
}

-(NSString *)name {
    NSLog(@"%s,%s,%d",__FILE__,__FUNCTION__,__LINE__);
    return _name;
}


-(NSString *)description {
    [self printPropertityList];
    [self printIvarList];
    return [NSString stringWithFormat:@"%@",_name];
}



-

@end
