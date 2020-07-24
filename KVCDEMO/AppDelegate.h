//
//  AppDelegate.h
//  KVCDEMO
//
//  Created by DengJinHui on 2020/7/24.
//  Copyright © 2020 LKL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

