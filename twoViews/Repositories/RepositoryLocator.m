//
//  RepositoryLocator.m
//  twoViews
//
//  Created by Sergio Orozco  on 8/10/16.
//  Copyright © 2016 Sergio Orozco . All rights reserved.
//

#import "RepositoryLocator.h"
#import "TestSettingsRepository.h"
#import "SettingsRepository.h"

@implementation RepositoryLocator

BOOL USE_TEST_REPOS = YES;

static id _sharedInstance;

+ (id) sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;
}

- (id) init {
    if (_sharedInstance){
        return _sharedInstance;
    }
    else{
        if (self = [super init]){
            //init properties
        }
        return self;
    }
}

- (id<ISettingsRepository>) settingsRepository {
    if (USE_TEST_REPOS){
        return [TestSettingsRepository sharedInstance];
    }
    else{
        return [SettingsRepository sharedInstance];
    }
}

@end
