//
//  Settings.h
//  twoViews
//
//  Created by Sergio Orozco  on 8/10/16.
//  Copyright © 2016 Sergio Orozco . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"

@interface Settings : MTLModel <MTLJSONSerializing>

@property(nonatomic, copy) NSString *cloudTrace;
@property(nonatomic, copy) NSString *language;
@property(nonatomic, copy) NSString *host;
@property(nonatomic, copy) NSString *agent;
@property(nonatomic, copy) NSString *accept;

-(NSMutableArray *)getSettingsAsArray;

@end
