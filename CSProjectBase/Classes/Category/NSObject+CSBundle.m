//
//  NSObject+CSBundle.m
//  CSProjectBase_Example
//
//  Created by Sahara on 2018/8/28.
//  Copyright © 2018年 CoderSahara. All rights reserved.
//

#import "NSObject+CSBundle.h"

@implementation NSObject (CSBundle)

//static NSBundle * _currentBundle;

+ (NSBundle *)currentBundle {
    
    NSBundle *bundle = [NSBundle bundleForClass:self];
    return bundle;
    //    if (_currentBundle == nil) {
    //        NSArray *frames = [NSBundle allFrameworks];
    //        for (NSBundle *bundle in frames) {
    //            NSString *bundleName = bundle.bundleURL.lastPathComponent;
    //            if ([bundleName containsString:@"DiscoverModule"]) {
    //                _currentBundle = bundle;
    //                break;
    //            }
    //        }
    //    }
    //    if (_currentBundle == nil) {
    //        return [NSBundle mainBundle];
    //    }
    //    return _currentBundle;
}

@end
