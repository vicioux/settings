//
//  AppModel.m
//  twoViews
//
//  Created by Sergio Orozco  on 8/10/16.
//  Copyright © 2016 Sergio Orozco . All rights reserved.
//

#import "AppModel.h"
#import "RepositoryLocator.h"

@implementation AppModel

static id _sharedInstance;

RepositoryLocator *context;

+ (AppModel *) sharedInstance {
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        _sharedInstance = [[self alloc] init];
        
    });
    
    return _sharedInstance;
}

- (id) init {
    
    if (_sharedInstance) {
        return _sharedInstance;
    } else {
        if (self = [super init]) {
            context = [RepositoryLocator sharedInstance];
        }
        return self;
    }
}

- (NSMutableArray *)settingsArray {
    
    if (self.settings) {
        _settingsArray = [self.settings getSettingsAsArray];
    }
    
    return _settingsArray;
}



-(void)findSettings:(void (^)(NSError *error)) block {
    __weak typeof(self) weakSelf = self;
    [context.settingsRepository getSettings:^(Settings *settings, NSError *error) {
        
        if (settings && !error) {
            weakSelf.settings = settings;
        }
        
        if (block) {
            block(error);
        }
        
    }];
}


@end
