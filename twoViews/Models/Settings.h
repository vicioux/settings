//
//  Settings.h
//  twoViews
//
//  Created by Sergio Orozco  on 8/10/16.
//  Copyright © 2016 Sergio Orozco . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Settings : NSObject

@property(nonatomic, copy) NSString *code;
@property(nonatomic, copy) NSString *codeTwo;

-(NSMutableArray *)getSettingsAsArray;

@end
