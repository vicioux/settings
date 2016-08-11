//
//  RepositoryLocator.h
//  twoViews
//
//  Created by Sergio Orozco  on 8/10/16.
//  Copyright © 2016 Sergio Orozco . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ISettingsRepository.h"

@interface RepositoryLocator : NSObject

+ (id) sharedInstance;
@property (nonatomic, strong, readonly) id<ISettingsRepository> settingsRepository;

@end
