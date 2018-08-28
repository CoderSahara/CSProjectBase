//
//  UIImageView+CSExtension.m
//  CSProjectBase_Example
//
//  Created by Sahara on 2018/8/28.
//  Copyright © 2018年 CoderSahara. All rights reserved.
//

#import "UIImageView+CSExtension.h"
#import "UIImageView+WebCache.h"
#import "UIImage+CSImage.h"

@implementation UIImageView (CSExtension)

- (void)setURLImageWithURL: (NSURL *)url progress:(void(^)(CGFloat progress))progress complete: (void(^)(BOOL completed))complete {
    
    [self sd_setImageWithURL:url placeholderImage:nil options:0 progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL * _Nullable targetURL) {
        if (progress != nil) {
            progress(1.0 * receivedSize / expectedSize);
        }
    } completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        self.image = image;
        if (complete != nil) {
            complete(YES);
        }
    }];
}

- (void)setURLImageWithURL: (NSURL *)url placeHoldImage:(UIImage *)placeHoldImage isCircle:(BOOL)isCircle {
    
    if (isCircle) {
        [self sd_setImageWithURL:url placeholderImage:[placeHoldImage circleImage] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
            
            UIImage *resultImage = [image circleImage];
            
            // 6. 处理结果图片
            if (resultImage == nil) return;
            self.image = resultImage;
            
            
        }];
        
    }else {
        [self sd_setImageWithURL:url placeholderImage:placeHoldImage completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
            
            // 6. 处理结果图片
            if (image == nil) return;
            self.image = image;
            
        }];
        
    }
    
}

@end
