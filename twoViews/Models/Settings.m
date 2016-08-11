//
//  Settings.m
//  twoViews
//
//  Created by Sergio Orozco  on 8/10/16.
//  Copyright © 2016 Sergio Orozco . All rights reserved.
//

#import "Settings.h"

@implementation Settings

-(NSMutableArray *)getSettingsAsArray {

    NSMutableArray * arraySettings = [[NSMutableArray alloc]init];
    [arraySettings addObject:self.code];
    [arraySettings addObject:self.codeTwo];
    return arraySettings;
}

@end
