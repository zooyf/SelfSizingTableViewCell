//
//  SSTableViewCell.m
//  SelfSizingTableViewCell
//
//  Created by 澳达国际 on 17/3/23.
//  Copyright © 2017年 JasonYu. All rights reserved.
//

#import "SSTableViewCell.h"
#import <Masonry.h>

@implementation SSTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        UIView *contentView = self.contentView;
        
        UILabel *label = [UILabel new];
        label.text = @"你好";
        [contentView addSubview:label];
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(contentView.mas_top);
            make.left.equalTo(contentView.mas_left);
            make.right.equalTo(contentView.mas_right);
            make.height.equalTo(@40);
        }];
        
        UIView *redView = [UIView new];
        redView.backgroundColor = [UIColor redColor];
        [contentView addSubview:redView];
        [redView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(contentView.mas_left).with.offset(15);
            make.top.equalTo(label.mas_bottom).with.offset(10);
            make.bottom.equalTo(contentView.mas_bottom).with.offset(-15);
            make.width.equalTo(@200);
            make.height.equalTo(@200);
        }];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
