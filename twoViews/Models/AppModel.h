//
//  AppModel.h
//  twoViews
//
//  Created by Sergio Orozco  on 8/10/16.
//  Copyright © 2016 Sergio Orozco . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Settings.h"

@interface AppModel : NSObject

@property (nonatomic, strong) Settings *settings;
@property (nonatomic, strong) NSMutableArray *settingsArray;

+ (AppModel *) sharedInstance;
- (void)findSettings:(void (^)(NSError *error)) block;
@end
