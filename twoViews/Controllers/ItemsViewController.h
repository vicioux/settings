//
//  ItemsViewController.h
//  twoViews
//
//  Created by Sergio Orozco  on 8/10/16.
//  Copyright © 2016 Sergio Orozco . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *itemsTableView;



@end
