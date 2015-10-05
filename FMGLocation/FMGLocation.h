//
//  FMGLocationTool.h
//
//  Created by FMG on 14/3/23.
//  Copyright © 2014年 FMG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"
#import <CoreLocation/CoreLocation.h>

typedef void(^ResultBlock)(CLLocation *location, CLPlacemark *pl, NSString *error);


@interface FMGLocationTool : NSObject
single_interface(FMGLocationTool);

- (void)getCurrentLocation:(ResultBlock)block;

@end
