//
//  ViewController.m
//  KVCDEMO
//
//  Created by DengJinHui on 2020/7/24.
//  Copyright © 2020 LKL. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *person = [Person new];
    [person setValue:@"jack" forKey:@"name"];
    
    [person setValue:@"basket" forKey:@"_hobby"];
    NSLog(@"%@",person);
}


@end
