//
//  StatusCell.h
//  微博
//
//  Created by qianfeng on 15-7-6.
//  Copyright (c) 2015年 夏颖. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Status;

@interface StatusCell : UITableViewCell

@property(nonatomic,strong) Status *status;

+(id)statusCellWithTableView:(UITableView *)tableView;

@end
