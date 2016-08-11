//
//  Settings.m
//  twoViews
//
//  Created by Sergio Orozco  on 8/10/16.
//  Copyright © 2016 Sergio Orozco . All rights reserved.
//

#import "Settings.h"

@implementation Settings



+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"cloudTrace": @"X-Cloud-Trace-Context",
             @"language": @"Accept-Language",
             @"host": @"Host",
             @"agent": @"User-Agent",
             @"accept": @"Accept"
             };
}

-(NSMutableArray *)getSettingsAsArray {

    NSMutableArray * arraySettings = [[NSMutableArray alloc]init];
    [arraySettings addObject:self.cloudTrace];
    [arraySettings addObject:self.language];
    [arraySettings addObject:self.host];
    [arraySettings addObject:self.agent];
    [arraySettings addObject:self.accept];
    return arraySettings;
}

@end
