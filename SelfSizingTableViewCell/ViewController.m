//
//  ViewController.m
//  SelfSizingTableViewCell
//
//  Created by 澳达国际 on 17/3/23.
//  Copyright © 2017年 JasonYu. All rights reserved.
//

#import "ViewController.h"
#import "SSTableViewCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

#define kIBSSTableviewCellID @"kIBSSTableviewCellID"
#define kCLASSSSTableviewCellID @"kCLASSSSTableviewCellID"
#define kDefaultSSTableviewCellID @"kDefaultSSTableviewCellID"

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[SSTableViewCell class] forCellReuseIdentifier:kCLASSSSTableviewCellID];
    self.tableView.estimatedRowHeight = 100;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    // Do any additional setup after loading the view, typically from a nib.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SSTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCLASSSSTableviewCellID];
    
//    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"kSSSTableviewCellID"];
//        cell.textLabel.numberOfLines = 0;
//    }
//    
//    NSMutableString *mtStr = @"Label".mutableCopy;
//    for (int i = 0; i < indexPath.row; i++) {
//        [mtStr appendString:mtStr];
//    }
//    cell.textLabel.text = mtStr;
    
    return cell;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
