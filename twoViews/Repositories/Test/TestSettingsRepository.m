//
//  TestSettingsRepository.m
//  twoViews
//
//  Created by Sergio Orozco  on 8/11/16.
//  Copyright © 2016 Sergio Orozco . All rights reserved.
//

#import "TestSettingsRepository.h"
#import "Settings.h"

@implementation TestSettingsRepository

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

-(void)getSettings:(void (^)(Settings *settings, NSError *error))block {
    if (block){
        Settings *settings = [[Settings alloc] init];
        block(settings, nil);
    }
}


@end
