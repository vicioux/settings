//
//  ISettingsRepository.h
//  twoViews
//
//  Created by Sergio Orozco  on 8/10/16.
//  Copyright © 2016 Sergio Orozco . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Settings.h"

@protocol ISettingsRepository <NSObject>

-(void)getSettings:(void (^)(Settings *settings, NSError *error))block;

@end