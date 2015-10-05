# FMGLocation
轻松方便实现定位功能，一步搞定！！！Easy to achieve positioning function, a step!!!
```objc
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

```
