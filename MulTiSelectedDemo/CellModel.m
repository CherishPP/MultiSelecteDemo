//
//  CellModel.m
//  MulTiSelectedDemo
//
//  Created by 高盼盼 on 16/8/31.
//  Copyright © 2016年 高盼盼. All rights reserved.
//

#import "CellModel.h"

@implementation CellModel

+ (instancetype)modelWithDic:(NSDictionary *)dic{
    return [[self alloc] initWithDic:dic];
}


- (instancetype)initWithDic:(NSDictionary *)dic{
    if(self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}

@end
