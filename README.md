# FMGLocation
轻松方便实现定位功能，一步搞定！！！Easy to achieve positioning function, a step!!!

####说明：本插件已适配iOS8.0-、iOS8.0、iOS9.0版本，不同版本之间，不同需求之间都有相应的配置，在使用的过程中，遇到的错误以及相应的解决办法，都在控制台打印了出来，只需要按照说明配置就OK了
This plugin has been adapted to iOS8.0, iOS9.0, iOS8.0- version, different versions, different needs between the corresponding configuration, the use of the process, encountered errors and the corresponding solution, are printed out in the console, only need to configure on OK!!

例如(example)：      

      2015-10-05 15:08:16.395 FMGLocationDemo[3487:190927] 如果在iOS8.0之后获取用户位置, 必须主动填写info.plist文件中的key          NSLocationAlwaysUsageDescription 或者 NSLocationWhenInUseUsageDescription
      2015-10-05 15:08:16.399 FMGLocationDemo[3487:190927] 用户还未决定

```objc
   [[FMGLocation sharedFMGLocation] getCurrentLocation:^(CLLocation *location, CLPlacemark *pl, NSString *error) {
        
        if ([error length] > 0) {
            
            NSLog(@"错误信息为：---%@",error);
            
        } else {
            
            // 位置名称
            NSLog(@"位置名称：----%@", pl.name);
            // 纬度
            NSLog(@"纬度：----%@",@(pl.location.coordinate.latitude).stringValue);
            // 经度
            NSLog(@"经度：----%@",@(pl.location.coordinate.longitude).stringValue);
            
        }
        
    }];

```

