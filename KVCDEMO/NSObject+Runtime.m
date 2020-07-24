//
//  NSObject+Runtime.m
//  KVCDEMO
//
//  Created by DengJinHui on 2020/7/24.
//  Copyright © 2020 LKL. All rights reserved.
//

#import <objc/runtime.h>
#import "NSObject+Runtime.h"


@implementation NSObject (Runtime)
-(void)printIvarList {
    unsigned int count;
    Ivar *ivarList = class_copyIvarList([self class], &count);
    for (unsigned int i =0; i<count; i++) {
        Ivar myIvar = ivarList[i];
        const  char *ivarName = ivar_getName(myIvar);
        NSLog(@"ivar(%d) : %@", i, [NSString stringWithUTF8String:ivarName]);
        
    }
    free(ivarList);
}

-(void)printPropertityList {
    unsigned int count;
    objc_property_t *pertityList = class_copyPropertyList([self class], &count);
    for (unsigned int i =0; i< count; i++) {
         objc_property_t property =pertityList[i];
        const char * propertyName = property_getName(property);
       
        
        // 获取属性所属类名
              NSString *propertyType;
              unsigned int attrCount;
              objc_property_attribute_t *attrs = property_copyAttributeList(property, &attrCount);
              for (unsigned int i = 0; i < attrCount; i++) {
                  switch (attrs[i].name[0]) {
                      case 'T': { // Type encoding
                          if (attrs[i].value) {
                              propertyType = [NSString stringWithUTF8String:attrs[i].value];
                              // 去除转义字符：@\"NSString\" -> @"NSString"
                              propertyType = [propertyType stringByReplacingOccurrencesOfString:@"\"" withString:@""];
                              // 去除 @ 符号
                              propertyType = [propertyType stringByReplacingOccurrencesOfString:@"@" withString:@""];
                              
                          }
                      } break;
                      default: break;
                  }
              }
         id value = [self valueForKey:[NSString stringWithUTF8String:propertyName]];
         NSLog(@"propertyName(%d) : %@ %@= %@", i, [NSString stringWithUTF8String:propertyName], propertyType,value);
        
        
    }
    free(pertityList);
    
}
@end
