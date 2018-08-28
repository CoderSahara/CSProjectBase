//
//  CSSessionManager.h
//  CSProjectBase_Example
//
//  Created by Sahara on 2018/8/28.
//  Copyright © 2018年 CoderSahara. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    RequestTypeGet,
    RequestTypePost
    
}RequestType;

@interface CSSessionManager : NSObject

- (void)setValue:(NSString *)value forHttpField:(NSString *)field;

- (void)request:(RequestType)requestType urlStr: (NSString *)urlStr parameter: (NSDictionary *)param resultBlock: (void(^)(id responseObject, NSError *error))resultBlock;

@end
