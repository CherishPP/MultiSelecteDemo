//
//  TableViewCell.m
//  MulTiSelectedDemo
//
//  Created by 高盼盼 on 16/8/31.
//  Copyright © 2016年 高盼盼. All rights reserved.
//

#import "TableViewCell.h"

@interface TableViewCell ()

@property (weak, nonatomic) IBOutlet UIButton *clickBtn;

@end

@implementation TableViewCell{
    BOOL clicked;
    BtnClickHandler _handler;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
+ (instancetype)cellWithTableView:(UITableView *)table{
    NSString * identifier = NSStringFromClass([self class]);
    UINib * nib = [UINib nibWithNibName:identifier bundle:nil];
    [table registerNib:nib forCellReuseIdentifier:identifier];
    return [table dequeueReusableCellWithIdentifier:identifier];
}
- (IBAction)btnClick:(UIButton *)sender {
    
    clicked = !clicked;
    if (_handler) {
        _handler(self,sender,clicked);
    }
}

- (void)setModel:(CellModel *)model{
    _model = model;
    BOOL isClick = model.isCliked;
    if (isClick == YES) {
        self.clickBtn.backgroundColor = [UIColor redColor];
    }else
        self.clickBtn.backgroundColor = [UIColor whiteColor];
}

- (void)setBtnClickHandler:(BtnClickHandler)handler{
    _handler = handler;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
