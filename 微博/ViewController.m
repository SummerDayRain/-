//
//  ViewController.m
//  微博
//
//  Created by qianfeng on 15-7-6.
//  Copyright (c) 2015年 夏颖. All rights reserved.
//

#import "ViewController.h"
#import "Status.h"
#import "StatusCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *contentTableView;

@property (nonatomic,strong)NSArray *status;
@end

@implementation ViewController
-(NSArray *)status
{
    if (_status == nil) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"statuses.plist" ofType:nil];
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *tmp = [NSMutableArray array ];
        for (NSDictionary *dict in array) {
            Status *status = [Status statusWithDict:dict];
            [tmp addObject:status];
        }
        
        _status = tmp;
    }
    
    return _status;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.contentTableView.rowHeight = 200;
}
#pragma mark tableViewDelegate
#pragma mark tableViewDatasource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.status.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
//    static NSString *cellID = @"statusCell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
//    if (cell ==nil) {
//        cell= [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
//        
//    }
    
    StatusCell *cell = [StatusCell statusCellWithTableView:tableView];
    Status *status = self.status[indexPath.row];
    cell.status = status;
    return cell;
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
