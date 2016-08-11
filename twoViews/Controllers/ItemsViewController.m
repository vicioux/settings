//
//  ItemsViewController.m
//  twoViews
//
//  Created by Sergio Orozco  on 8/10/16.
//  Copyright © 2016 Sergio Orozco . All rights reserved.
//

#import "ItemsViewController.h"
#import "AppModel.h"

@interface ItemsViewController ()


@end

@implementation ItemsViewController

NSArray *tableData;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"SettingsList";
    
    __weak typeof(self) weakSelf = self;
    [[AppModel sharedInstance] findSettings:^(NSError *error) {
        [weakSelf.itemsTableView reloadData];
    }];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [AppModel sharedInstance].settingsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [[AppModel sharedInstance].settingsArray objectAtIndex:indexPath.row];
    return cell;
}

@end
