//
//  TableViewCell.h
//  MulTiSelectedDemo
//
//  Created by 高盼盼 on 16/8/31.
//  Copyright © 2016年 高盼盼. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellModel.h"

@class TableViewCell;

typedef void(^BtnClickHandler)(TableViewCell * cell,UIButton * sender,BOOL clicked);

@interface TableViewCell : UITableViewCell

@property (nonatomic,strong)CellModel * model;

+ (instancetype)cellWithTableView:(UITableView *)table;

- (void)setBtnClickHandler:(BtnClickHandler)handler;

@end
