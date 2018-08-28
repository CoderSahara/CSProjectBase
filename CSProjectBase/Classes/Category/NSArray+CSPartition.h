//
//  NSArray+CSPartition.h
//  CSProjectBase_Example
//
//  Created by Sahara on 2018/8/28.
//  Copyright © 2018年 CoderSahara. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (CSPartition)

/**
 *  将一个数组切割成多个数组
 *
 *  @param start 从第几个元素开始分割
 *  @param count 每个数组最大个数
 *
 *  @return 切割好的数组
 */
- (NSArray *)partitionArrayWithStart:(NSInteger)start Count:(NSInteger)count;

@end
