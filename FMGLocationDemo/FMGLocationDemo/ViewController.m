//
//  ViewController.m
//  FMGLocation
//
//  Created by FMG on 14/3/23.
//  Copyright © 2014年 FMG. All rights reserved.
//

#import "ViewController.h"
#import "FMGLocation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [[FMGLocationTool sharedFMGLocationTool] getCurrentLocation:^(CLLocation *location, CLPlacemark *pl, NSString *error) {
        
        if ([error length] > 0) {
            
            NSLog(@"错误信息为：---%@",error);
            
        } else {
            
            // 位置名称
            NSLog(@"%@", pl.name);
            // 纬度
            NSLog(@"%@",@(pl.location.coordinate.latitude).stringValue);
            // 经度
            NSLog(@"%@",@(pl.location.coordinate.longitude).stringValue);
            
        }
        
    }];
}

@end
