//
//  UIView+CSNib.m
//  CSProjectBase_Example
//
//  Created by Sahara on 2018/8/28.
//  Copyright © 2018年 CoderSahara. All rights reserved.
//

#import "UIView+CSNib.h"
#import "NSObject+CSBundle.h"

@implementation UIView (CSNib)

+ (instancetype)loadFromNib {
    
    UIView *view = [[self currentBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil].firstObject;
    return view;
    
}

- (UIViewController *)currentViewController
{
    
    for (UIView* next = [self superview]; next; next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}

@end
