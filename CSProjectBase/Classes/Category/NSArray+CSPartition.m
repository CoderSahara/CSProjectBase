//
//  NSArray+CSPartition.m
//  CSProjectBase_Example
//
//  Created by Sahara on 2018/8/28.
//  Copyright © 2018年 CoderSahara. All rights reserved.
//

/**
 *  数组分割扩展
 */

#import "NSArray+CSPartition.h"

@implementation NSArray (CSPartition)

- (NSArray *)partitionArrayWithStart:(NSInteger)start Count:(NSInteger)count
{
    
    NSMutableArray *resultArr = [NSMutableArray array];
    NSInteger max = count;
    
    NSInteger segment= (self.count + max - 1) / max;//需要分割几次
    
    for (int i = 0; i < segment; ++i) {
        NSUInteger star = (i * max) + start; //开始位置(此处跳过1个长度要加1)
        NSUInteger len = (i == (segment - 1)) ? (self.count - start - i * max) % (max + 1) : max; //结束位置(此处跳过1个长度要减1)
        
        
        NSRange range= NSMakeRange(star,len); //分割范围
        
        NSArray *temp = [self subarrayWithRange:range]; // 分割数组
        
        [resultArr addObject:temp];
    }
    
    return resultArr;
    
}

@end
