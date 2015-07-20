//
//  Status.m
//  微博
//
//  Created by qianfeng on 15-7-6.
//  Copyright (c) 2015年 夏颖. All rights reserved.
//

#import "Status.h"

@implementation Status

+(id)statusWithDict:(NSDictionary *)dict
{
    return [[self alloc]initWithDict:dict];
    
}
-(id)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    
    return self;
}


@end
