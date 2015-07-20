//
//  StatusCell.m
//  微博
//
//  Created by qianfeng on 15-7-6.
//  Copyright (c) 2015年 夏颖. All rights reserved.
//

#import "StatusCell.h"
#import "Status.h"
#define nameF [UIFont systemFontOfSize:14]
@interface StatusCell()

@property (nonatomic,weak)UIImageView *iconView;
@property (nonatomic,weak) UILabel *nameLab;
@property (nonatomic,weak) UIImageView *vipView;
@property (nonatomic,weak) UILabel *textLab;
@property (nonatomic,weak) UIImageView *picView;
@end

@implementation StatusCell

+(id)statusCellWithTableView:(UITableView *)tableView
{
    
    static NSString *cellID = @"statusCell";
   StatusCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell ==nil) {
        cell= [[StatusCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        
    }
    return cell;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
      _iconView = [[UIImageView alloc]init];
        [self.contentView addSubview:_iconView];
        
        _nameLab = [[UILabel alloc]init];
        _nameLab.font =nameF;
        [self.contentView addSubview:_nameLab];
        
        _vipView = [[UIImageView alloc] init];
        _vipView.image = [UIImage imageNamed:@"vip"];
        [self.contentView addSubview:_vipView];
        
        _textLab = [[UILabel alloc]init];
        [self.contentView addSubview:_textLab];
        
        _picView = [[UIImageView alloc]init];
        [self.contentView addSubview:_picView];
    }
    
    return self;
}
-(void)setStatus:(Status *)status
{
    _status = status;
    [self setData:status];
    [self setSubviewFrame:status];
}

-(void)setData:(Status *)status
{
    self.iconView.image = [UIImage imageNamed:status.icon];
    self.nameLab.text = status.name;
    self.vipView.image = [UIImage imageNamed:@"vip"];
    self.textLab.text = status.text;
    self.picView.image = [UIImage imageNamed:status.picture];
}

-(void)setSubviewFrame:(Status *)status
{
    CGFloat padding = 10;
    CGFloat iconX = padding;
    CGFloat iconY = padding;
    CGFloat iconH = 50;
    CGFloat iconW = 50;
    
    self.iconView.frame = CGRectMake(iconX, iconY, iconW, iconH);

    CGFloat nameX = CGRectGetMaxY(self.iconView.frame)+padding;
    CGFloat nameH = 14;
    CGFloat nameY = (iconH - nameH)*0.5 +padding;
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:14]};
    CGSize size = [status.name boundingRectWithSize:CGSizeMake(150, 0) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
    
    CGFloat namaW = size.width;
    self.nameLab.frame = CGRectMake(nameX, nameY, namaW, nameH);
    
    CGFloat vipW = 14;
    CGFloat vipH = 15;
    CGFloat vipX = CGRectGetMaxY(<#CGRect rect#>)
    
    
}


















- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
