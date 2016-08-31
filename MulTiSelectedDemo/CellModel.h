//
//  CellModel.h
//  MulTiSelectedDemo
//
//  Created by 高盼盼 on 16/8/31.
//  Copyright © 2016年 高盼盼. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CellModel : NSObject

@property (nonatomic,assign)BOOL isCliked;

+ (instancetype)modelWithDic:(NSDictionary *)dic;

@end
